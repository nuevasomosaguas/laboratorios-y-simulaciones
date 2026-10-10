falla(inicio)
falla(cambia("-dnorm(z) / (1 - acceso)", "dnorm(z) / (1 - acceso)"))
falla(cambia("dnorm(z) / acceso\n", "dnorm(z)\n"))
pasa(cambia("-dnorm(z) / (1 - acceso)", "-acceso * media_dentro(acceso) / (1 - acceso)"))
