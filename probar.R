# Comprueba los problemas sin navegador. En cada uno, la solución tiene que pasar su
# propia comprobación; y si hay un pruebas.R, los errores que describe tienen que fallar.
#
#   Rscript probar.R                       todos
#   Rscript probar.R problemas/02-granovetter

pdf(NULL)  # los gráficos de las soluciones, a ninguna parte

# Los bloques {webr} del ejercicio: el de partida, la solución y la comprobación
bloques <- function(qmd) {
  lineas <- readLines(qmd, encoding = "UTF-8")
  inicios <- grep("^```\\{webr\\}", lineas)
  finales <- grep("^```$", lineas)
  bloques <- lapply(inicios, function(i) lineas[(i + 1):(min(finales[finales > i]) - 1)])
  tipo <- vapply(bloques, function(b) {
    if ("#| solution: true" %in% b) "solucion" else if ("#| check: true" %in% b) "comprobacion" else "inicio"
  }, "")
  setNames(lapply(bloques, function(b) paste(b[!startsWith(b, "#|")], collapse = "\n")), tipo)
}

# Ejecuta el código como quarto-live: devuelve el último valor y el entorno
ejecutar <- function(codigo, entorno = new.env(parent = globalenv())) {
  valor <- NULL
  for (expresion in parse(text = codigo, keep.source = FALSE)) valor <- eval(expresion, entorno)
  list(valor = valor, entorno = entorno)
}

# El comprobador por defecto de quarto-live (webr.exercise.checker): define .result y
# .envir_result, pero no .solution; la solución solo llega en los ..., como list(...)$solution.
comprobador <- function(check_code, envir_result, last_value, ...) {
  .envir_result <- envir_result
  .result <- last_value
  eval(parse(text = check_code))
}

comprobar <- function(b, codigo) {
  tryCatch({
    solucion <- ejecutar(b$solucion)
    alumno <- ejecutar(codigo)
    comprobador(b$comprobacion, alumno$entorno, alumno$valor, solution = solucion$valor)
  }, error = function(e) list(correct = FALSE, message = paste("Error de R:", conditionMessage(e))))
}

probar <- function(carpeta) {
  b <- bloques(file.path(carpeta, "index.qmd"))
  fallos <- character()
  informar <- function(esperado, codigo, que) {
    force(codigo)  # un cambia() que no encuentra su texto detiene la prueba, no cuenta como «falla»
    r <- comprobar(b, codigo)
    cat(sprintf("  %s %s\n", if (isTRUE(r$correct)) "pasa " else "falla", r$message))
    if (!identical(isTRUE(r$correct), esperado)) fallos <<- c(fallos, que)
  }
  # Lo que pruebas.R tiene a mano
  entorno <- new.env(parent = globalenv())
  entorno$solucion <- b$solucion
  entorno$inicio <- b$inicio
  entorno$cambia <- function(de, a, codigo = b$solucion) {
    if (!grepl(de, codigo, fixed = TRUE)) stop("cambia(): no encuentro «", de, "»")
    sub(de, a, codigo, fixed = TRUE)
  }
  entorno$pasa <- function(codigo) informar(TRUE, codigo, paste("debería pasar:", substr(codigo, 1, 60)))
  entorno$falla <- function(codigo) informar(FALSE, codigo, paste("debería fallar:", substr(codigo, 1, 60)))

  cat(basename(carpeta), "\n")
  entorno$pasa(b$solucion)
  pruebas <- file.path(carpeta, "pruebas.R")
  if (file.exists(pruebas)) sys.source(pruebas, entorno)
  fallos
}

carpetas <- commandArgs(trailingOnly = TRUE)
if (length(carpetas) == 0) carpetas <- list.dirs("problemas", recursive = FALSE)
fallos <- unlist(lapply(carpetas, probar))
if (length(fallos) > 0) {
  cat("\nFALLOS:\n", paste0("  ", fallos, "\n"))
  quit(status = 1)
}
cat("\nTodo en orden.\n")
