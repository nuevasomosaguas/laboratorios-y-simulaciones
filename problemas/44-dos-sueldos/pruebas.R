falla(inicio)
falla(cambia("consumo * mean(rentas) * (1 + escala * (length(rentas) - 1))", "consumo * mean(rentas)"))  # sin escala
falla(cambia("consumo * mean(rentas) * (1 + escala * (length(rentas) - 1))", "consumo * sum(rentas)"))   # dos gastan el doble
falla(cambia("consumo * mean(rentas) * (1 + escala * (length(rentas) - 1))", "consumo * mean(rentas) * (1 + escala * length(rentas))"))
falla(cambia("matrix(sort(rentas), ncol = 2, byrow = TRUE)", "matrix(sort(rentas), ncol = 2)"))  # por columnas
falla(cambia("matrix(sort(rentas), ncol = 2, byrow = TRUE)", "matrix(rentas, ncol = 2, byrow = TRUE)"))  # sin ordenar
pasa(cambia("consumo * mean(rentas) * (1 + escala * (length(rentas) - 1))", "consumo * sum(rentas) / length(rentas) * (1 + escala * (length(rentas) - 1))"))
pasa(cambia("matrix(sort(rentas), ncol = 2, byrow = TRUE)", "cbind(sort(rentas)[c(2, 4, 6, 8, 10)], sort(rentas)[c(1, 3, 5, 7, 9)])"))
pasa(cambia("escala <- 0.5", "escala <- 1"))  # tarea 4
pasa(cambia("gp <- 0.07", "gp <- 0.12"))      # tarea 5
