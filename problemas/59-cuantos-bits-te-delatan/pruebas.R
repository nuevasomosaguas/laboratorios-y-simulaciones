falla(inicio)
falla(cambia("-sum(p * log2(p))", "-sum(p * log(p))"))                   # nats, no bits
falla(cambia("-sum(p * log2(p))", "sum(p * log2(p))"))                    # sin el signo
falla(cambia("  p <- p[p > 0]\n", ""))                                   # 0 * log2(0) da NaN
falla(cambia("sum(q * (1 - q)^(n - 1))", "sum(q * (1 - q)^n)"))           # compite también consigo misma
falla(cambia("sum(q * (1 - q)^(n - 1))", "sum((1 - q)^(n - 1))"))         # sin ponderar por la celda
falla(cambia("sum(q * (1 - q)^(n - 1))", "sum(q * exp(-n * q))"))         # la aproximación de Poisson
pasa(cambia("-sum(p * log2(p))", "sum(p * log2(1 / p))"))
pasa(cambia("sum(q * (1 - q)^(n - 1))", "weighted.mean((1 - q)^(n - 1), q)"))
