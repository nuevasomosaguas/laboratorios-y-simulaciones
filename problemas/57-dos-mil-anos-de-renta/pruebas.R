falla(inicio)
falla(cambia("(x1 / x0)^(1 / (hasta - desde)) - 1", "(x1 / x0 - 1) / (hasta - desde)"))  # la media simple, sin interés compuesto
falla(cambia("(x1 / x0)^(1 / (hasta - desde)) - 1", "(x1 / x0)^(1 / (hasta - desde))"))  # sin restar 1
falla(cambia("x0 <- d$pib_pc[d$anio == desde]", "x0 <- mundo$pib_pc[mundo$anio == desde]"))  # ignora los datos d
falla(cambia("log(2) / log(1 + g)", "0.7 / g"))                                           # la regla del 70
falla(cambia("log(2) / log(1 + g)", "2 / (1 + g)"))
pasa(cambia("(x1 / x0)^(1 / (hasta - desde)) - 1", "exp(log(x1 / x0) / (hasta - desde)) - 1"))
pasa(cambia("log(2) / log(1 + g)", "1 / log2(1 + g)"))
