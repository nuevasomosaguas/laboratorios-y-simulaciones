falla(inicio)
falla(cambia("floor(x / 10^floor(log10(x)))", "as.numeric(substr(as.character(x), 1, 1))"))  # no sirve con 0,034
falla(cambia("floor(x / 10^floor(log10(x)))", "x %/% 10^floor(log10(x)) + 1"))
