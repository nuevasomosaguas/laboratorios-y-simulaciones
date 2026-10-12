falla(inicio)
falla(cambia("(1 - theta) + k * gana_pueblo(tp, theta) >= 1 - mu", "(1 - theta) + gana_pueblo(tp, theta) >= 1 - mu"))  # la promesa como si se cobrara siempre
falla(cambia("(1 - theta) + k * gana_pueblo(tp, theta) >= 1 - mu", "(1 - theta) >= 1 - mu"))                          # sin promesa
falla(cambia("theta - pierde_elite(tp, theta) >= reprimir", "theta - pierde_elite(tp, theta) <= reprimir"))           # al revés
falla(cambia("theta - pierde_elite(tp, theta) >= reprimir", "theta - k * pierde_elite(tp, theta) >= reprimir"))       # la democracia como si costara solo con amenaza
pasa(cambia("(1 - theta) + k * gana_pueblo(tp, theta) >= 1 - mu", "k * gana_pueblo(tp, theta) >= theta - mu"))
pasa(cambia("q <- 0.9", "q <- 0.5"))         # tarea 4
pasa(cambia("kappa <- 0.6", "kappa <- 0.8"))  # tarea 4
