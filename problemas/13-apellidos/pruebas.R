falla(inicio)
falla(cambia("nueva <- f(q)", "nueva <- f(1 - q)"))
falla(cambia("  q <- 0\n", "  q <- 1\n"))  # desde 1 se queda en el punto fijo trivial
