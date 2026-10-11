rampa <- "p[orden] <= seq_len(m) / m * q"
falla(cambia(rampa, "p <= seq_len(m) / m * q"))       # sin ordenar
falla(cambia(rampa, "p[orden] <= seq_len(m) / m"))    # sin q
falla(cambia(rampa, "p[orden] <= q / m"))             # Bonferroni
pasa(cambia(rampa, "sort(p) <= (1:m) * q / m"))
falla(cambia("sum(descubre & !real) / max(1, sum(descubre))", "sum(descubre & !real) / sum(descubre)"))  # NaN sin descubrimientos
falla(cambia("sum(descubre & !real) / max(1, sum(descubre))", "mean(descubre & !real)"))
