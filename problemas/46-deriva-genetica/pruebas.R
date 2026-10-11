falla(inicio)
falla(cambia("rbinom(length(n), N2, p_sel)", "round(N2 * p_sel)"))          # sin deriva
falla(cambia("rbinom(length(n), N2, p_sel)", "rbinom(length(n), N2, p)"))    # sin selección
falla(cambia("rbinom(length(n), N2, p_sel)", "rbinom(1, N2, p_sel)"))        # una sola población
falla(cambia("-4 * N * s * p0", "-2 * N * s * p0"))
falla(cambia("(1 - exp(-4 * N * s))", "(1 - exp(4 * N * s))"))
pasa(cambia("rbinom(length(n), N2, p_sel)", "qbinom(runif(length(n)), N2, p_sel)"))  # la inversa de la binomial
pasa(cambia("(1 - exp(-4 * N * s * p0)) / (1 - exp(-4 * N * s))", "-expm1(-4 * N * s * p0) / -expm1(-4 * N * s)"))
