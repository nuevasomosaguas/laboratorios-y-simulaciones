falla(inicio)
bayes <- "ell + log(ifelse(a, pG / pB, (1 - pG) / (1 - pB)))"
falla(cambia(bayes, "ell + log(ifelse(a, pB / pG, (1 - pB) / (1 - pG)))"))        # la razón al revés
falla(cambia(bayes, "ell + log(pG / pB)"))                                         # toda receta como si fuera de A
falla(cambia(bayes, "ell + log(if (a) pG / pB else (1 - pG) / (1 - pB))"))         # no vale con vectores
falla(cambia(bayes, "ell + ifelse(a, 1, -1) * log(0.7 / 0.3)"))                    # cada receta como una experiencia
pasa(cambia(bayes, "ell + log(ifelse(a, pG, 1 - pG)) - log(ifelse(a, pB, 1 - pB))"))
metropolis <- "log(runif(length(lp_nuevo))) < lp_nuevo - lp_viejo"
falla(cambia(metropolis, "lp_nuevo > lp_viejo"))                                   # solo cuesta arriba
falla(cambia(metropolis, "runif(length(lp_nuevo)) < lp_nuevo - lp_viejo"))         # sin logaritmo
falla(cambia(metropolis, "log(runif(1)) < lp_nuevo - lp_viejo"))                   # el mismo azar para todas las cadenas
falla(cambia(metropolis, "log(runif(length(lp_nuevo))) < lp_viejo - lp_nuevo"))    # al revés
pasa(cambia(metropolis, "runif(length(lp_nuevo)) < exp(lp_nuevo - lp_viejo)"))
