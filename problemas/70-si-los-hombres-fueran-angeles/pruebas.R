falla(inicio)
falla(cambia("1 - sum(a * b) / sqrt(sum(a^2) * sum(b^2))", "sum(a * b) / sqrt(sum(a^2) * sum(b^2))"))   # la semejanza, no la distancia
falla(cambia("1 - sum(a * b) / sqrt(sum(a^2) * sum(b^2))", "1 - sum(a * b) / (sum(a^2) * sum(b^2))"))   # sin la raíz
falla(cambia("1 - sum(a * b) / sqrt(sum(a^2) * sum(b^2))", "1 - sum(a * b) / sqrt(sum(a^2) + sum(b^2))")) # la suma de las normas
falla(cambia("mean(abs(a - b))", "mean(a - b)"))                                                     # sin el valor absoluto
falla(cambia("mean(abs(a - b))", "sum(abs(a - b))"))                                                 # la suma, no la media
falla(cambia("mean(abs(a - b))", "sqrt(mean((a - b)^2))"))                                           # la distancia euclídea
pasa(cambia("1 - sum(a * b) / sqrt(sum(a^2) * sum(b^2))", "1 - crossprod(a, b)[1] / sqrt(crossprod(a)[1] * crossprod(b)[1])"))
pasa(cambia("mean(abs(a - b))", "sum(abs(a - b)) / length(a)"))
