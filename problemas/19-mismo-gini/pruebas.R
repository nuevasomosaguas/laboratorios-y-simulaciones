falla(cambia("sum(diff(p) * (L[-1] + L[-length(L)]) / 2)", "sum(diff(p) * (L[-1] + L[-length(L)]))"))  # sin dividir por 2
falla(cambia("sum(diff(p) * (L[-1] + L[-length(L)]) / 2)", "mean(L) * 0.5"))
falla(cambia("sum(diff(p) * (L[-1] + L[-length(L)]) / 2)", "sum(L[-1]) / 10000"))   # solo vale con esta rejilla
pasa(cambia("sum(diff(p) * (L[-1] + L[-length(L)]) / 2)", "sum((p[-1] - p[-length(p)]) * (L[-1] + L[-length(L)])) / 2"))
