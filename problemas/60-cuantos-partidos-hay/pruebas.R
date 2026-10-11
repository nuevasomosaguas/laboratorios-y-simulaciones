falla(inicio)
falla(cambia("sum(p^q)^(1 / (1 - q))", "sum(p^q)^(1 / (q - 1))"))   # el exponente con el signo cambiado
falla(cambia("sum(p^q)^(1 / (1 - q))", "1 / sum(p^q)"))              # solo vale para q = 2
falla(cambia("    2^H(p)", "    exp(H(p))"))                         # H() está en bits
falla(cambia("    2^H(p)", "    H(p)"))                              # la entropía, no su número equivalente
pasa(cambia("    2^H(p)", "    exp(-sum(p * log(p)))"))
pasa(cambia("sum(p^q)^(1 / (1 - q))", "exp(log(sum(p^q)) / (1 - q))"))
