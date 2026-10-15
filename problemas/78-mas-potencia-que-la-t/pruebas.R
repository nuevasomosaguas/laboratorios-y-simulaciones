falla(inicio)
falla(cambia("z <- c(x, y)", "z <- x"))                                          # la población de un solo grupo
falla(cambia("z <- c(x, y)", "z <- y"))
falla(cambia("mean(abs(dif) >= abs(obs))", "mean(dif >= obs)"))                 # de una cola
falla(cambia("mean(abs(dif) >= abs(obs))", "sum(abs(dif) >= abs(obs))"))        # cuenta, no fracción
falla(cambia("mean(abs(dif) >= abs(obs))", "mean(abs(dif) > abs(obs))"))         # estrictamente mayor: falla con empates
falla(cambia("dif <- estad(X) - estad(Y)", "dif <- rowMeans(X) - rowMeans(Y)"))  # sin el estadístico elegido
pasa(cambia("z <- c(x, y)", "z <- c(y, x)"))
pasa(cambia("mean(abs(dif) >= abs(obs))", "(1 + sum(abs(dif) >= abs(obs))) / (B + 1)"))
pasa(cambia("mean(abs(dif) >= abs(obs))", "mean(abs(obs) <= abs(dif))"))
