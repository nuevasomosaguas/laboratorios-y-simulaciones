falla(inicio)
falla(cambia("d[t - 1] * (1 + i) / (1 + g) - saldo[t]", "d[t - 1] * (1 + i - g) - saldo[t]"))         # aproximación
falla(cambia("d[t - 1] * (1 + i) / (1 + g) - saldo[t]", "d[t - 1] * (1 + i) / (1 + g) - saldo[t - 1]")) # un año tarde
falla(cambia("d[t - 1] * (1 + i) / (1 + g) - saldo[t]", "d[t - 1] * (1 + i) / (1 + g) + saldo[t]"))     # signo
falla(cambia("0 - (coste - coste[1])", "0 - coste"))                                                   # el gasto entero
falla(cambia("corte_pensiones * pensiones", "corte_pensiones"))                                        # fracción, no puntos
falla(cambia("0 - (coste - coste[1])", "0 + (coste - coste[1])"))                                      # signo del envejecimiento
pasa(cambia("d[t - 1] * (1 + i) / (1 + g) - saldo[t]", "(d[t - 1] * (1 + i) - saldo[t] * (1 + g)) / (1 + g)"))
pasa(cambia("0 - (coste - coste[1]) + corte_pensiones * pensiones + recorte + impuestos", "impuestos + recorte + corte_pensiones * pensiones - coste + coste[1]"))
