falla(inicio)
falla(cambia("w <- 1 / ee^2", "w <- 1 / ee"))                  # error típico, no varianza
falla(cambia("w <- 1 / ee^2", "w <- ee^2"))                    # pesa más lo impreciso
falla(cambia("w <- 1 / ee^2", "w <- 1"))                       # media simple
falla(cambia("lm(z ~ precision)", "lm(precision ~ z)"))
falla(cambia("lm(z ~ precision)", "lm(d ~ ee)"))               # eso es PET, no Egger
pasa(cambia("w <- 1 / ee^2", "w <- ee^-2"))
pasa(cambia("efecto <- 0.2", "efecto <- 0"))                   # tarea 5
