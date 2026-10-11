falla(inicio)
falla(cambia("letras[n %% 23 + 1]", "letras[n %% 23]"))         # cuenta la tabla desde 0
falla(cambia("letras[n %% 23 + 1]", "letras[n %/% 23 + 1]"))    # el cociente, no el resto
falla(cambia("sum(s * c(1, 2, 4))", "sum(s * c(4, 2, 1))"))      # el binario al revés
falla(cambia("sum(s * c(1, 2, 4))", "sum(s)"))                   # cuenta los unos
pasa(cambia("letras[n %% 23 + 1]", "substr(\"TRWAGMYFPDXBNJZSQVHLCKE\", n %% 23 + 1, n %% 23 + 1)"))
pasa(cambia("sum(s * c(1, 2, 4))", "sum(s * 2^(0:2))"))
