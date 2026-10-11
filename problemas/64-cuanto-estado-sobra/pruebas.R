falla(inicio)
falla(cambia("sum(pob * pesos) / sum(pob)", "sum(pob * pesos)"))                          # sin dividir por la población
falla(cambia("sum(pob * pesos) / sum(pob)", "mean(pesos)"))                               # sin ponderar por la población
falla(cambia("gasto * necesidad(ref, pesos) / necesidad(pob, pesos)",
             "gasto * necesidad(pob, pesos) / necesidad(ref, pesos)"))                    # al revés
falla(cambia("gasto * necesidad(ref, pesos) / necesidad(pob, pesos)", "gasto"))           # sin estandarizar
pasa(cambia("sum(pob * pesos) / sum(pob)", "weighted.mean(pesos, pob)"))
