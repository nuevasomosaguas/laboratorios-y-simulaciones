falla(inicio)
falla(cambia("(mean(si) - (1 - p)) / (2 * p - 1)", "(mean(si) - p) / (2 * p - 1)"))
falla(cambia("(mean(si) - (1 - p)) / (2 * p - 1)", "mean(si) - (1 - p)"))
falla(cambia("(mean(si) - (1 - p)) / (2 * p - 1)", "mean(si)"))  # la encuesta directa
falla(cambia("var(estimaciones) / var(directas)", "sd(estimaciones) / sd(directas)"))
pasa(cambia("var(estimaciones) / var(directas)", "(sd(estimaciones) / sd(directas))^2"))
pasa(cambia("p <- 2/3", "p <- 0.9"))  # tarea 3
pasa(cambia("p <- 2/3", "p <- 0.5"))  # tarea 3: la moneda
