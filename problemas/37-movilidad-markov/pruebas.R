falla(inicio)
falla(cambia("x <- x %*% P", "x <- P %*% x"))                           # el orden del producto
falla(cambia("x <- x %*% P", "x <- x * P"))
falla(cambia("Mod(eigen(P)$values[2])", "Re(eigen(P)$values[2])"))       # la matriz asimétrica los da complejos
falla(cambia("Mod(eigen(P)$values[2])", "Mod(eigen(P)$values[1])"))      # el primero siempre vale 1
pasa(cambia("Mod(eigen(P)$values[2])", "abs(eigen(P)$values[2])"))
pasa(cambia("x <- x %*% P", "x <- c(x %*% P)"))
