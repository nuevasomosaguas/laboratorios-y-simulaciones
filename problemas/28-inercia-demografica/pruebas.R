falla(inicio)
falla(cambia("sum(m * L)", "sum(m)"))                       # la tasa bruta, sin mortalidad
falla(cambia("sum(m * L)", "sum(m * lx[-21])"))             # supervivientes, no años vividos
falla(cambia("N <- A_reemplazo %*% N", "N <- leslie(m) %*% N"))  # la fecundidad de antes
falla(cambia("N <- A_reemplazo %*% N", "N <- c(N %*% A_reemplazo)"))
pasa(cambia("sum(m * L)", "c(m %*% L)"))
pasa(cambia("tgf <- 4.5", "tgf <- 3"))                     # tarea 4
