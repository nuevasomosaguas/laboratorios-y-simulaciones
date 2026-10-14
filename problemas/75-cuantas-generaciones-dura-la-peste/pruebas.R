falla(inicio)
falla(cambia("(1 - beta) * x[t - 1]", "beta * x[t - 1]"))
falla(cambia("(1 - beta) * x[t - 1]", "(1 + beta) * x[t - 1]"))
falla(cambia("(1 - beta) * x[t - 1]", "x[t - 1] - beta"))
falla(cambia("abs(x) <= abs(x[1]) / 2", "x <= x[1] / 2"))
falla(cambia("abs(x) <= abs(x[1]) / 2", "abs(x) <= 0.5"))
pasa(cambia("(1 - beta) * x[t - 1]", "x[t - 1] - beta * x[t - 1]"))
pasa(cambia("abs(x) <= abs(x[1]) / 2", "abs(x / x[1]) <= 0.5"))
pasa(cambia("beta <- 0.003", "beta <- 0.035"))   # tarea 4
