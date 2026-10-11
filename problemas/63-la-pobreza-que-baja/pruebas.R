falla(inicio)
falla(cambia("100 * mean(renta < umbral)", "mean(renta < umbral)"))        # proporción, no porcentaje
falla(cambia("100 * mean(renta < umbral)", "100 * mean(renta <= umbral)"))  # el umbral justo no es pobreza
falla(cambia("0.6 * median(renta)", "0.6 * mean(renta)"))                   # la media, no la mediana
falla(cambia("0.6 * median(renta)", "0.5 * median(renta)"))                 # el 50%, no el 60%
pasa(cambia("100 * mean(renta < umbral)", "100 * sum(renta < umbral) / length(renta)"))
pasa(cambia("0.6 * median(renta)", "quantile(renta, 0.5, names = FALSE) * 0.6"))
