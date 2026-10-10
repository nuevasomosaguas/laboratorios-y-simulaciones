falla(inicio)
falla(cambia("mean(d$republicano[d$renta > cortes[2]]) - mean(d$republicano[d$renta <= cortes[1]])",
             "mean(d$republicano[d$renta <= cortes[1]]) - mean(d$republicano[d$renta > cortes[2]])"))  # al revés
falla(cambia("mean(d$republicano[d$renta > cortes[2]]) - mean(d$republicano[d$renta <= cortes[1]])",
             "mean(d$republicano[d$renta > cortes[1]]) - mean(d$republicano[d$renta <= cortes[1]])"))  # mitades, no tercios
falla(cambia("cor(por_estado$renta, por_estado$republicano)", "cor(votantes$renta, votantes$republicano)"))  # correlación individual
pasa(cambia("mean(d$republicano[d$renta > cortes[2]]) - mean(d$republicano[d$renta <= cortes[1]])",
            "diff(tapply(d$republicano, cut(d$renta, c(-Inf, cortes, Inf)), mean)[c(1, 3)])[[1]]"))
pasa(cambia("cor(por_estado$renta, por_estado$republicano)", "cor(por_estado$republicano, por_estado$renta)"))
