falla(inicio)
falla(cambia("mean(triangulos / choose(grado, 2))", "mean(triangulos / grado^2)"))
falla(cambia("mean(triangulos / choose(grado, 2))", "sum(triangulos) / sum(choose(grado, 2))"))  # transitividad, no la media local
falla(cambia("nuevo <- sample(libres, 1)", "nuevo <- sample(N, 1)"))                            # bucles y lazos repetidos
falla(cambia("nuevo <- sample(libres, 1)", "nuevo <- libres[1]"))                               # siempre el mismo: no es al azar
falla(cambia("      A[i, vecino] <- A[vecino, i] <- 0\n", ""))                                     # añade lazos sin quitar
pasa(cambia("mean(triangulos / choose(grado, 2))", "mean(2 * triangulos / (grado * (grado - 1)))"))
pasa(cambia("nuevo <- sample(libres, 1)", "nuevo <- libres[sample.int(length(libres), 1)]"))
