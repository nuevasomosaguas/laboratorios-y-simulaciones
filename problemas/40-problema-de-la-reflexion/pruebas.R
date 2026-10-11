falla(inicio)
falla(cambia("(ave(y, grupo, FUN = sum) - y) / (ave(y, grupo, FUN = length) - 1)", "ave(y, grupo)"))  # contarse a sí mismo
falla(cambia("(ave(y, grupo, FUN = sum) - y) / (ave(y, grupo, FUN = length) - 1)",
             "(ave(y, grupo, FUN = sum) - y) / ave(y, grupo, FUN = length)"))                 # divide entre todos
falla(cambia("lm(y ~ ave(y, grupo), data = d)", "lm(y ~ media_otros(y, grupo), data = d)"))
pasa(cambia("(ave(y, grupo, FUN = sum) - y) / (ave(y, grupo, FUN = length) - 1)",
            "(ave(y, grupo, FUN = length) * ave(y, grupo) - y) / (ave(y, grupo, FUN = length) - 1)"))
pasa(cambia("set.seed(1993)", "set.seed(7)"))
pasa(cambia("contexto = 1)", "contexto = 2)"))
