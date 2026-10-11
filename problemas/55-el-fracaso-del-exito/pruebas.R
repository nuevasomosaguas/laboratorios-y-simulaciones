falla(inicio)
falla(cambia("a * exp(b * x) / (1 + s2 * H0(x, a, b))", "a * exp(b * x) * (1 + s2 * H0(x, a, b))"))   # la selección al revés
falla(cambia("a * exp(b * x) / (1 + s2 * H0(x, a, b))", "a * exp(b * x) / (1 + s2 * H0(x))"))         # ignora a y b
falla(cambia("a * exp(b * x) / (1 + s2 * H0(x, a, b))", "a * exp(b * x) * exp(-s2 * H0(x, a, b))"))   # no es la gamma
falla(cambia("f / (f + r)", "f"))                                                                    # sin dividir entre los que llegan
falla(cambia("f / (f + r)", "f / (p0 + r)"))
falla(cambia("r <- (1 - p0) * exp(-H0(x, a, b))", "r <- (1 - p0) * exp(-z * H0(x, a, b))"))          # los robustos con la z de los frágiles
pasa(cambia("a * exp(b * x) / (1 + s2 * H0(x, a, b))", "a * exp(b * x) / (1 + s2 * a / b * (exp(b * x) - 1))"))
pasa(cambia("f / (f + r)", "1 / (1 + r / f)"))
