falla(inicio)
falla(cambia("control <- H / S", "control <- H / J"))                       # como si los orientados no compitieran
falla(cambia("control <- H / S", "control <- V / S"))                       # todas las vacantes, llenas o no
falla(cambia("efecto_piloto * p * J", "tabla$medido * p * J"))              # el efecto de cada mercado: sin controles no hay
falla(cambia("efecto_piloto * p * J", "efecto_piloto * J"))                 # todos los parados, no los orientados
pasa(cambia("control <- H / S", "control <- H / (J * (1 + p * efecto))"))
pasa(cambia("efecto_piloto * p * J", "(piloto[[1]] - piloto[[2]]) * tabla$p * J"))
