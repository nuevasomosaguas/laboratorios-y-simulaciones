falla(inicio)
falla(cambia("h / (2026 - inicio + 1)", "h / (2026 - inicio)"))                    # el primer año no cuenta: m infinito en 2026
falla(cambia("h / (2026 - inicio + 1)", "h"))                                      # sin normalizar
falla(cambia("h / (2026 - inicio + 1)", "h * (2026 - inicio + 1)"))
falla(cambia("function(v) median(mejores(v)", "function(v) mean(mejores(v)"))      # la media, no la mediana
falla(cambia("function(v) median(mejores(v)", "function(v) max(mejores(v)"))
pasa(cambia("h / (2026 - inicio + 1)", "h / (2027 - inicio)"))
pasa(cambia("n_mejores <- NA", "n_mejores <- 16"))
pasa(cambia("function(v) median(mejores(v), na.rm = TRUE)", "function(v) quantile(mejores(v), 0.5, na.rm = TRUE, names = FALSE)"))
