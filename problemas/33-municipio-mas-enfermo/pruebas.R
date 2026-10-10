falla(inicio)
falla(cambia("max(0, s2 - 1000 * m / mean(poblacion))", "s2"))                       # sin restar el azar
falla(cambia("max(0, s2 - 1000 * m / mean(poblacion))", "max(0, var(tasa) - mean(1000 * m / poblacion))"))  # sin ponderar: da 0
falla(cambia("tau2 / (tau2 + 1000 * m / poblacion)", "tau2 / (tau2 + 1000 * m / mean(poblacion))"))  # la misma B para todos
falla(cambia("tau2 / (tau2 + 1000 * m / poblacion)", "(1000 * m / poblacion) / (tau2 + 1000 * m / poblacion)"))  # al revés
pasa(cambia("set.seed(2016)", "set.seed(1)"))
