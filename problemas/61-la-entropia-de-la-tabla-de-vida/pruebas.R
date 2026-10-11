falla(inicio)
falla(cambia("-integral(x, ifelse(l > 0, l * log(l), 0))", "integral(x, ifelse(l > 0, l * log(l), 0))"))      # sin el signo
falla(cambia("-integral(x, ifelse(l > 0, l * log(l), 0))", "-integral(x, ifelse(l > 0, l * log2(l), 0))"))    # en bits
falla(cambia("-integral(x, ifelse(l > 0, l * log(l), 0))", "-integral(x, l * log(l))"))                       # 0 * log(0) da NaN
falla(cambia("/ integral(x, l)", "/ length(l)"))                                                               # no divide por e0
falla(cambia("l^(1 - delta)", "l * (1 - delta)"))                                                              # multiplica la supervivencia
falla(cambia("l^(1 - delta)", "l^(1 + delta)"))                                                                # la mortalidad sube
pasa(cambia("-integral(x, ifelse(l > 0, l * log(l), 0))", "-integral(x, l * log(pmax(l, 1e-300)))"))
pasa(cambia("l^(1 - delta)", "exp((1 - delta) * log(l))"))
