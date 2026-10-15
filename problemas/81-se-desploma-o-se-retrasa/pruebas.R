falla(inicio)
falla(cambia("sum(sapply(edades, function(a) tasa(t - a, a)))", "sum(sapply(edades, function(a) tasa(t, a)))"))      # la generación del año
falla(cambia("sum(sapply(edades, function(a) tasa(t - a, a)))", "sum(sapply(edades, function(a) tasa(t - 30, a)))"))  # una sola generación
falla(cambia("  isf / (1 - r)", "  isf * (1 - r)"))                                                                  # al revés
falla(cambia("  isf / (1 - r)", "  isf / (1 + r)"))                                                                  # signo
falla(cambia("  isf / (1 - r)", "  isf"))                                                                            # sin corregir
pasa(cambia("sum(sapply(edades, function(a) tasa(t - a, a)))", "sum(mapply(tasa, t - edades, edades))"))
pasa(cambia("  isf / (1 - r)", "  isf * 1 / (1 - r)"))
