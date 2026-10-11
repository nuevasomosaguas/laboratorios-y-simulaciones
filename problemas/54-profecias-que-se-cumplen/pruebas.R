falla(inicio)
falla(cambia("rumor + (1 - rumor) * mean(tolerancia < k * x)", "mean(tolerancia < k * x)"))           # se olvida a los del rumor
falla(cambia("rumor + (1 - rumor) * mean(tolerancia < k * x)", "rumor + mean(tolerancia < k * x)"))   # cuenta dos veces a los del rumor
falla(cambia("rumor + (1 - rumor) * mean(tolerancia < k * x)", "rumor + (1 - rumor) * mean(tolerancia < k)"))  # el miedo no depende de las retiradas
falla(cambia("min(k[final > 0.5])", "max(k[final < 0.5])"))
falla(cambia("min(k[final > 0.5])", "k[which.max(diff(final))]"))
falla(cambia("min(k[final > 0.5])", "which(final > 0.5)[1]"))                # la posición, no el efecto
pasa(cambia("min(k[final > 0.5])", "min(k[final > reservas])"))             # entre el 25% y el 50% no se queda nadie
pasa(cambia("rumor + (1 - rumor) * mean(tolerancia < k * x)", "rumor + (1 - rumor) * sum(k * x > tolerancia) / length(tolerancia)"))
pasa(cambia("min(k[final > 0.5])", "k[which(final > 0.5)[1]]"))
