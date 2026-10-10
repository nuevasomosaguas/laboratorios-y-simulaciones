falla(inicio)
falla(cambia("sum(n_k * (p_k - o_k)^2) / length(o)", "mean((p_k - o_k)^2)"))        # sin ponderar
falla(cambia("sum(n_k * (o_k - base)^2) / length(o)", "sum(n_k * (p_k - base)^2) / length(o)"))
falla(cambia("sum(n_k * (o_k - base)^2) / length(o)", "sum(n_k * (o_k - base)^2)"))  # sin dividir
pasa(cambia("sum(n_k * (p_k - o_k)^2) / length(o)", "weighted.mean((p_k - o_k)^2, n_k)"))
pasa(cambia("set.seed(2005)", "set.seed(1)"))
