falla(inicio)
falla(cambia("optimize(function(h) bienestar(h, theta)", "optimize(function(h) produccion(h)"))                         # solo la producción
falla(cambia("optimize(function(h) bienestar(h, theta)", "optimize(function(h) produccion(h) - theta * h"))            # coste lineal
falla(cambia("bienestar(h0, theta) - bienestar(h, theta) - premio", "bienestar(h, theta) - premio"))                   # el bienestar, no la pérdida
falla(cambia("bienestar(h0, theta) - bienestar(h, theta) - premio", "bienestar(h0, incansable) - bienestar(h, incansable) - premio"))  # separa al incansable
falla(cambia("bienestar(h0, theta) - bienestar(h, theta) - premio", "produccion(h0) - produccion(h) - premio"))         # sin el coste
pasa(cambia("bienestar(h0, theta) - bienestar(h, theta) - premio", "premio - (bienestar(h0, theta) - bienestar(h, theta))"))
pasa(cambia("optimize(function(h) bienestar(h, theta)", "optimize(function(h) produccion(h) - theta / 2 * h^2"))
