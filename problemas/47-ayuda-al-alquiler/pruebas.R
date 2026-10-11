falla(inicio)
falla(cambia("1 + ed * ((p - ayuda) / alquiler - 1)", "1 + ed * (p / alquiler - 1)"))        # la ayuda no cambia nada
falla(cambia("1 + ed * ((p - ayuda) / alquiler - 1)", "1 + ed * ((p + ayuda) / alquiler - 1)"))  # la ayuda como un sobrecoste
falla(cambia("1 + ed * ((p - ayuda) / alquiler - 1)", "1 + ed * ((p - ayuda) / p - 1)"))      # el precio de partida equivocado
falla(cambia("abs(ed) / (es + abs(ed))", "es / (es + abs(ed))"))                             # la parte del inquilino
falla(cambia("abs(ed) / (es + abs(ed))", "ed / (es + ed)"))                                   # sin quitar el signo
pasa(cambia("1 + ed * ((p - ayuda) / alquiler - 1)", "1 + ed * (p - ayuda - alquiler) / alquiler"))
pasa(cambia("abs(ed) / (es + abs(ed))", "1 - es / (es - ed)"))
pasa(cambia("cobertura <- 1", "cobertura <- 0.01"))  # tarea 4
pasa(cambia("es <- 0.1", "es <- 1"))                 # tarea 4, a largo plazo
pasa(cambia("gy <- 0.04; ga <- 0.04", "gy <- 0.07; ga <- 0.07"))  # la tarea 3 del problema 43
