falla(inicio)
falla(cambia("p[t - 1] + lambda * (p[t - 1] - p[t - 2])", "p[t - 1]"))                              # sin extrapolación
falla(cambia("p[t - 1] + lambda * (p[t - 1] - p[t - 2])", "p[t - 1] + lambda * (p[t - 2] - p[t - 1])"))  # la tendencia al revés
falla(cambia("p[t - 1] + lambda * (p[t - 1] - p[t - 2])", "p[t] + lambda * (p[t] - p[t - 1])"))      # sin retraso
falla(cambia("1 / (1 + 2 * lambda)", "1 / (1 + lambda)"))
falla(cambia("1 / (1 + 2 * lambda)", "1 - 2 * lambda"))
pasa(cambia("p[t - 1] + lambda * (p[t - 1] - p[t - 2])", "(1 + lambda) * p[t - 1] - lambda * p[t - 2]"))
pasa(cambia("1 / (1 + 2 * lambda)", "1 / (2 * lambda + 1)"))
pasa(cambia("es <- 0.6", "es <- 0.5"))  # tarea 4: justo en el umbral
pasa(cambia("es <- 0.6", "es <- 0.4"))  # tarea 4: el ciclo se apaga
