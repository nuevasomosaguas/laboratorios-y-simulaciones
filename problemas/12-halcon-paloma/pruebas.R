falla(cambia("(1 - x) * V / 2", "V / 2"))                      # las palomas también se cruzan con halcones
falla(cambia("x * (V - C) / 2 + (1 - x) * V", "x * (V - C) + (1 - x) * V"))
pasa(cambia("C <- 10", "C <- 20"))
pasa(cambia("C <- 10", "C <- 3"))                               # C < V: todos halcones
