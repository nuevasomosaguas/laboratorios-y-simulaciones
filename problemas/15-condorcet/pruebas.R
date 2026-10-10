falla(inicio)
falla(cambia("conteos[antes(x, y)]", "conteos[antes(y, x)]"))
falla(cambia("sum(conteos[antes(x, y)]) > sum(conteos) / 2", "sum(antes(x, y)) > 3"))
pasa(cambia("sum(conteos[antes(x, y)]) > sum(conteos) / 2", "sum(conteos[antes(x, y)]) > sum(conteos[antes(y, x)])"))
