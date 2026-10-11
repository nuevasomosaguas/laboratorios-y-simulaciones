falla(inicio)
falla(cambia("sum(l * flujo / (1 + r)^(edad - 25))", "sum(flujo / (1 + r)^(edad - 25))"))          # sin supervivencia
falla(cambia("sum(l * flujo / (1 + r)^(edad - 25))", "sum(l * flujo * (1 + r)^(edad - 25))"))      # capitaliza en vez de descontar
falla(cambia("sum(l * flujo / (1 + r)^(edad - 25))", "sum(l * flujo / (1 + r * (edad - 25)))"))    # interés simple
falla(cambia("valor_presente(c$pension, l, r) / valor_presente(c$cotizacion, l, r)",
             "sum(c$pension) / sum(c$cotizacion)"))                                                # sin descontar ni supervivencia
falla(cambia("valor_presente(c$pension, l, r) / valor_presente(c$cotizacion, l, r)",
             "valor_presente(c$cotizacion, l, r) / valor_presente(c$pension, l, r)"))              # al revés
pasa(cambia("sum(l * flujo / (1 + r)^(edad - 25))", "sum(l * flujo * exp(-log(1 + r) * (edad - 25)))"))
