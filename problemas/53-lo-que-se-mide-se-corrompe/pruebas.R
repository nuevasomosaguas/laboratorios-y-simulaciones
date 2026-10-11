falla(inicio)
falla(cambia("r * (gamma - 1) / d", "r * gamma / d"))                                  # toda la manga ancha, no lo que paga de más
falla(cambia("r * (gamma - 1) / d", "r / d"))                                          # sin γ
falla(cambia("sabe | runif(length(sabe)) < beta * mean(sabe)", "runif(length(sabe)) < beta * mean(sabe)"))  # los enterados la olvidan
falla(cambia("sabe | runif(length(sabe)) < beta * mean(sabe)", "sabe | runif(1) < beta * mean(sabe)"))      # un sorteo para todos
falla(cambia("sabe | runif(length(sabe)) < beta * mean(sabe)", "sabe | runif(length(sabe)) < beta"))        # sin imitación
pasa(cambia("r * (gamma - 1) / d", "(gamma - 1) * r / d"))
pasa(cambia("sabe | runif(length(sabe)) < beta * mean(sabe)", "sabe | rbinom(length(sabe), 1, beta * mean(sabe)) == 1"))
