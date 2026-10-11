falla(inicio)
falla(cambia("ahorro * (1 + r) + (1 - consumo)", "ahorro + (1 - consumo)"))  # sin intereses
falla(cambia("(1 - consumo) * renta - alquiler", "(1 - consumo) * renta"))   # sin alquiler
falla(cambia("(1 - consumo) * renta - alquiler", "consumo * renta - alquiler"))
falla(cambia("ahorro * (1 + r) + (1 - consumo) * renta - alquiler", "(ahorro + (1 - consumo) * renta - alquiler) * (1 + r)"))
falla(cambia("(gp - r)", "(gp - gy)"))
falla(cambia("k * (precio / renta)", "(precio / renta)"))
pasa(cambia("ahorro * (1 + r) + (1 - consumo) * renta - alquiler", "(1 + r) * ahorro + renta * (1 - consumo) - alquiler"))
pasa(cambia("gy <- 0.04\nga <- 0.04", "gy <- 0.07\nga <- 0.07"))  # tarea 3
pasa(cambia("gp <- 0.07", "gp <- 0.12"))                         # tarea 4
pasa(cambia("ga <- 0.04", "ga <- 0.088"))                        # tarea 5
pasa(cambia("r <- 0.02", "r <- gp"))                             # quien ya tiene casa
