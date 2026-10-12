falla(inicio)
falla(cambia("pmax(0, (b - r * W) / w)", "(b - r * W) / w"))      # los ricos trabajan días negativos
falla(cambia("pmax(0, (b - r * W) / w)", "b / w"))                # sin la renta de la simiente
falla(cambia("pmax(0, (b - r * W) / w)", "pmax(0, (b - W) / w)"))  # la simiente entera como renta
falla(cambia("p$trabaja - valor * b", "valor * b - p$trabaja"))   # al revés
falla(cambia("p$trabaja - valor * b", "p$trabaja - b"))           # el sustento en fanegas, no en días
pasa(cambia("pmax(0, (b - r * W) / w)", "pmax((b - r * W) / w, 0)"))
pasa(cambia("rep(8, 5))\n", "rep(8, 5))\ncapital <- rep(mean(capital), 100)\n"))  # tarea 4
pasa(cambia("rep(8, 5))\n", "rep(8, 5))\ncapital <- c(rep(0, 95), rep(24.5, 5))\n"))  # para ir más allá
