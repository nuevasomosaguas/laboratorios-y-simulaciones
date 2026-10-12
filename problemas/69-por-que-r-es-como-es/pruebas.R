falla(inicio)
falla(cambia("gusto_A + r * nA > gusto_B + r * nB", "gusto_A > gusto_B"))                 # sin colegas: no hay rendimientos crecientes
falla(cambia("gusto_A + r * nA > gusto_B + r * nB", "gusto_A + r * nB > gusto_B + r * nA"))   # los colegas de la otra práctica
falla(cambia("  gusto_B <- ifelse(practico, 0, g) + m", "  gusto_B <- ifelse(practico, 0, g + m)"))  # la mejora, solo para los metodólogos
falla(cambia("arriba = floor(g + m) + 1", "arriba = g + m"))                               # la ventaja es entera
falla(cambia("arriba = floor(g + m) + 1", "arriba = floor(g) + 1"))                        # sin la mejora
pasa(cambia("gusto_A + r * nA > gusto_B + r * nB", "gusto_A - gusto_B > r * (nB - nA)"))
falla(cambia("arriba = floor(g + m) + 1", "arriba = ceiling(g + m)"))                       # falla cuando g + m es entero
