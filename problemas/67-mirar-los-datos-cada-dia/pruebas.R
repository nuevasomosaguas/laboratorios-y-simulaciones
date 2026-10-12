falla(inicio)
falla(cambia("which(abs(z) > umbral)[1]", "which(z > umbral)[1]"))                # solo gana B
falla(cambia("which(abs(z) > umbral)[1]", "which(abs(z) > umbral)"))              # todos los días, no el primero
falla(cambia("which(abs(z) > umbral)[1]", "which(abs(z) > umbral[1])[1]"))        # el umbral del primer día para todos
falla(cambia("quantile(apply(abs(Z), 1, max), 0.95)", "quantile(abs(Z[, K]), 0.95)"))   # solo la última mirada
falla(cambia("quantile(apply(abs(Z), 1, max), 0.95)", "quantile(abs(Z), 0.95)"))        # todas las miradas mezcladas
pasa(cambia("which(abs(z) > umbral)[1]", "match(TRUE, abs(z) > umbral)"))
pasa(cambia("quantile(apply(abs(Z), 1, max), 0.95)", "quantile(apply(abs(Z), 1, function(z) max(abs(z))), 0.95)"))
