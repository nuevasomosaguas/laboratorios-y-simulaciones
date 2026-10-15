falla(inicio)
falla(cambia("N <- nuevo + 5 * saldo * perfil", "N <- nuevo + saldo * perfil"))                     # un año, no cinco
falla(cambia("N <- nuevo + 5 * saldo * perfil", "N <- nuevo + 5 * saldo"))                           # sin repartir por edad
falla(cambia("N <- nuevo + 5 * saldo * perfil", "N <- nuevo"))                                       # sin inmigrantes
falla(cambia("N <- nuevo + 5 * saldo * perfil", "N <- nuevo + 5 * saldo * saldo9100 / sum(saldo9100)")) # con los negativos
falla(cambia("proyectar(1.7, 1e6, N = 0 * N2001)", "proyectar(1.7, 1e6, N = N2001)"))                 # sobre la España de 2001
pasa(cambia("N <- nuevo + 5 * saldo * perfil", "N <- nuevo + perfil * saldo * 5"))
pasa(cambia("proyectar(1.7, 1e6, N = 0 * N2001)", "proyectar(1.7, 1e6, N = matrix(0, 20, 2))"))
