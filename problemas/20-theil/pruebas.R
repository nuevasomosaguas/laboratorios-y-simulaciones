falla(cambia("mean(x / mean(x) * log(x / mean(x)))", "mean(log(x / mean(x)))"))       # la desviación logarítmica media, otra medida
falla(cambia("sum(s * log(mu / mean(renta)))", "sum(log(mu / mean(renta)))"))          # sin ponderar
pasa(cambia("mean(x / mean(x) * log(x / mean(x)))", "sum(x * log(x / mean(x))) / sum(x)"))
