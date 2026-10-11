falla(inicio)
falla(cambia("(1 - e)^elasticidad", "(1 - e)^-elasticidad"))                    # el servicio baja al abaratarse
falla(cambia("(1 - e)^elasticidad", "1 - elasticidad * e"))                     # la aproximación lineal
falla(cambia("1 - ahorro_real / ahorro_estatico", "ahorro_real / ahorro_estatico"))  # lo que queda, no lo que se pierde
falla(cambia("1 - ahorro_real / ahorro_estatico", "ahorro_estatico - ahorro_real"))  # en puntos, no en proporción
pasa(cambia("(1 - e)^elasticidad", "exp(elasticidad * log(1 - e))"))
pasa(cambia("1 - ahorro_real / ahorro_estatico", "(ahorro_estatico - ahorro_real) / ahorro_estatico"))
