falla(inicio)
falla(cambia("N[t - 1] * (1 + (nacimientos(y) - muertes(y)) / 1000)", "N[t - 1] * (nacimientos(y) - muertes(y)) / 1000"))
falla(cambia("N[t - 1] * (1 + (nacimientos(y) - muertes(y)) / 1000)", "N[t - 1] * (1 + nacimientos(y) - muertes(y))"))
falla(cambia("N[t - 1] * (1 + (nacimientos(y) - muertes(y)) / 1000)", "N[t - 1] * (1 + (muertes(y) - nacimientos(y)) / 1000)"))
falla(cambia("function(y) nacimientos(y) - muertes(y)", "function(y) nacimientos(y) + muertes(y)"))
pasa(cambia("uniroot(function(y) nacimientos(y) - muertes(y), c(0.1, 5))$root", "uniroot(function(y) muertes(y) - nacimientos(y), c(0.1, 5))$root"))
pasa(cambia("c(3, 3.6)", "c(3, 6)"))                                       # tarea 3
pasa(cambia("muertes <- function(y) 55 - 20 * y", "muertes <- function(y) 60 - 20 * y"))  # tarea 4
