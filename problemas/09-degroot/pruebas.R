falla(cambia("W %*% creencia", "t(W) %*% creencia"))
falla(cambia("v / sum(v)", "v"))
falla(cambia("v / sum(v)", "rep(0.2, 5)"))
falla(cambia("v / sum(v)", "v / sum(abs(v))"))  # eigen() lo devuelve en negativo
