falla(inicio)
falla(cambia("sum(N[edad >= 20 & edad < jubilacion])", "sum(N[edad < jubilacion])"))   # los niños no trabajan
falla(cambia("N[edad >= jubilacion]", "N[edad > jubilacion]"))
falla(cambia("edad < jubilacion]", "edad <= jubilacion]"))
falla(cambia("dependencia(L, jubilacion)", "dependencia(lx, jubilacion)"))
falla(cambia("dependencia(L, jubilacion)", "tasa[21]"))  # al cabo de cien años todavía no ha llegado
pasa(cambia("jubilacion <- 65", "jubilacion <- 70"))      # tarea 4
pasa(cambia("tgf <- 4.5", "tgf <- 3"))
