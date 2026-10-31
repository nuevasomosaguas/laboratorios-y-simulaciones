falla(cambia("4 / log(fiable[[\"semana_0\"]] / fiable[[\"semana_4\"]])", "log(fiable[[\"semana_0\"]] / fiable[[\"semana_4\"]]) / 4"))  # la tasa, no tau
falla(cambia("4 / log(fiable[[\"semana_0\"]] / fiable[[\"semana_4\"]])", "4 / log(fiable[[\"semana_4\"]] / fiable[[\"semana_0\"]])"))  # al revés
falla(cambia("contenido(t) * (1 - descuento * recuerdo(t))", "contenido(t) * (1 - descuento)"))  # sin el recuerdo
falla(cambia("contenido(t) * (1 - descuento * recuerdo(t))", "contenido(t) * descuento * recuerdo(t)"))  # lo descontado, no lo aceptado
falla(cambia("contenido(t) * (1 - descuento * recuerdo(t))", "contenido(t) * (1 - descuento * recuerdo(0))"))  # el recuerdo del primer día
pasa(cambia("contenido(t) * (1 - descuento * recuerdo(t))", "contenido(t) - contenido(t) * descuento * recuerdo(t)"))
