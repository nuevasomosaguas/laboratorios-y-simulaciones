falla(cambia("mean(tapply(d$crecimiento, d$pais, mean))", "mean(d$crecimiento)"))  # cada año pesa igual
pasa(cambia("mean(tapply(d$crecimiento, d$pais, mean))", "mean(sapply(split(d$crecimiento, d$pais), mean))"))
falla(cambia("deuda$anio < 1951))", "deuda$anio < 1950))"))  # se queda 1950 de Australia y Canadá
falla(cambia("seleccion <- !(", "seleccion <- ("))  # al revés
