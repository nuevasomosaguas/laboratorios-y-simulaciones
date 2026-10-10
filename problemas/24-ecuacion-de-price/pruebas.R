falla(inicio)
falla(cambia("sum(peso * (W - W_media) * (p - p_media))", "cov(W, p)"))           # sin ponderar y con n − 1
falla(cambia("sum(peso * (W - W_media) * (p - p_media))", "mean((W - W_media) * (p - p_media))"))
falla(cambia("sum(peso * W * delta)", "sum(peso * delta)"))                        # falta W
falla(cambia("sum(peso * W * delta)", "sum(W * delta)"))
pasa(cambia("sum(peso * (W - W_media) * (p - p_media))", "sum(peso * W * p) - W_media * p_media"))
pasa(cambia("altruistas <- c(20, 80)", "altruistas <- c(40, 60)", cambia("egoistas <- c(80, 20)", "egoistas <- c(60, 40)")))  # tarea 3
