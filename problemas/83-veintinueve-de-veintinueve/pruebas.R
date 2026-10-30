falla(cambia("pnorm(z - criterio)", "1 - pnorm(z - criterio)"))  # la cola de abajo
falla(cambia("pnorm(z - criterio)", "pnorm(z - qnorm(0.975))"))  # siempre 1,96
falla(cambia("mediana - (exito - mediana)", "mediana"))  # sin restar la inflación
falla(cambia("median(potencia)\n", "mean(potencia)\n"))  # la media, que Wells y Petty arrastran
falla(cambia("mediana - (exito - mediana)", "2 * mediana - 1"))  # sin exito
pasa(cambia("mediana - (exito - mediana)", "2 * mediana - exito"))
