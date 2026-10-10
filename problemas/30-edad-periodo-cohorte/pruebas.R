falla(inicio)
falla(cambia("datos$periodo - datos$edad", "datos$edad - datos$periodo"))
falla(cambia("datos$periodo - datos$edad", "datos$periodo + datos$edad"))
falla(cambia("c(0, 1, -1, 1)", "c(0, 1, 1, 1)"))
falla(cambia("c(0, 1, -1, 1)", "c(0, -1, 1, 1)"))
falla(cambia("c(0, 1, -1, 1)", "c(0, 0, 0, 0)"))
pasa(cambia("c(0, 1, -1, 1)", "c(0, -2, 2, -2)"))  # cualquier múltiplo
pasa(cambia("datos$periodo - datos$edad", "with(datos, periodo - edad)"))
