falla(inicio)
falla(cambia("P <- 1 - exp(-k * C / A)", "P <- exp(-k * C / A)"))
falla(cambia("P <- 1 - exp(-k * C / A)", "P <- 1 - exp(-k * A / C)"))    # la razón al revés
falla(cambia("agravio - R * P > umbral", "agravio - P > umbral"))        # sin aversión al riesgo
falla(cambia("agravio - R * P > umbral", "agravio - R * P >= umbral"))   # basta con igualar
falla(cambia("agravio <- H * (1 - L)", "agravio <- H * L"))
pasa(cambia("agravio - R * P > umbral", "agravio > umbral + R * P"))
pasa(cambia("n_policias <- 16", "n_policias <- 8"))                       # tarea 4
