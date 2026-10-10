falla(inicio)
falla(cambia("max(z) - alfa", "mean(z) - alfa"))                                 # copiar a la media, no al mejor
falla(cambia("beta * gumbel(N[t])", "gumbel(N[t])"))                              # sin la escala
falla(cambia("max(z) - alfa + beta * gumbel(N[t])", "max(z) - alfa + beta * rnorm(N[t])"))
falla(cambia("exp(alfa / beta - euler)", "exp(alfa / beta)"))
falla(cambia("exp(alfa / beta - euler)", "exp(alfa - euler) / beta"))
pasa(cambia("max(z) - alfa + beta * gumbel(N[t])", "max(z) - alfa - beta * log(rexp(N[t]))"))  # otra forma de sacar un Gumbel
pasa(cambia("exp(alfa / beta - euler)", "exp(alfa / beta - 0.577)"))
