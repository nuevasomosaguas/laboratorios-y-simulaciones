falla(inicio)
falla(cambia("mean((estimaciones - multitud)^2)", "var(estimaciones)"))            # divide entre n - 1
falla(cambia("mean((estimaciones - multitud)^2)", "mean((estimaciones - verdad)^2)"))
falla(cambia("(multitud - verdad)^2", "mean((estimaciones - verdad)^2)"))           # el error medio otra vez
falla(cambia("(multitud - verdad)^2", "abs(multitud - verdad)"))
pasa(cambia("mean((estimaciones - multitud)^2)", "var(estimaciones) * (length(estimaciones) - 1) / length(estimaciones)"))
pasa(cambia("verdad + 200 +", "verdad + 400 +"))
