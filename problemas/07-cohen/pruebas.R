combinada <- "sqrt(((n1 - 1) * var(x) + (n2 - 1) * var(y)) / (n1 + n2 - 2))"
falla(cambia(combinada, "sd(c(x, y))"))
falla(cambia(combinada, "sqrt((var(x) + var(y)) / 2)"))  # sin ponderar
falla(cambia("2 * pnorm(-abs(d) / 2)", "2 * pnorm(-d / 2)"))
falla(cambia("pnorm(d / sqrt(2))", "pnorm(d)"))
