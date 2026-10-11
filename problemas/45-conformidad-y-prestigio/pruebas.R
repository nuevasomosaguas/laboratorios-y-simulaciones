falla(inicio)
falla(cambia("(2 * p - 1)", "(1 - 2 * p)"))                                  # la conformidad al revés
falla(cambia("D * p * (1 - p) * (2 * p - 1)", "D * (2 * p - 1)"))            # sin la varianza p(1 - p)
falla(cambia("p + s * p * (1 - p) + ", "p + s + "))                           # la ventaja sin p(1 - p)
falla(cambia("(1 - s / D) / 2", "(1 + s / D) / 2"))
falla(cambia("(1 - s / D) / 2", "1 - s / D / 2"))
pasa(cambia("p + s * p * (1 - p) + D * p * (1 - p) * (2 * p - 1)", "p + p * (1 - p) * (s + D * (2 * p - 1))"))
pasa(cambia("(1 - s / D) / 2", "0.5 - s / (2 * D)"))
