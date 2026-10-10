falla(cambia("(1 - t) * x + t * mean(x)", "(1 - t) * x"))               # el impuesto sin el reparto
falla(cambia("(1 - t) * x + t * mean(x)", "(1 - t) * x + t * median(x)"))
falla(cambia("x[which.min(x)] <- x[which.min(x)] + cantidad", "x[which.min(x)] <- x[which.min(x)] - cantidad"))
pasa(cambia("(1 - t) * x + t * mean(x)", "x - t * x + t * sum(x) / length(x)"))
