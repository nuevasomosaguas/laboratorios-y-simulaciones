falla(inicio)
falla(cambia("mean(cambio[tratadas]) - mean(cambio[!rownames(e) %in% tratadas])", "mean(cambio[tratadas])"))                    # sin restar las demás
falla(cambia("mean(cambio[tratadas]) - mean(cambio[!rownames(e) %in% tratadas])", "mean(cambio[tratadas]) - mean(cambio)"))      # las tratadas, también de control
falla(cambia("mean(cambio[tratadas]) - mean(cambio[!rownames(e) %in% tratadas])", "mean(cambio[!rownames(e) %in% tratadas]) - mean(cambio[tratadas])"))  # al revés
falla(cambia("dif_en_dif(sample(otras, 3), e0[otras, ])", "dif_en_dif(sample(otras, 1), e0[otras, ])"))                           # una sola provincia
falla(cambia("dif_en_dif(sample(otras, 3), e0[otras, ])", "dif_en_dif(otras[1:3], e0[otras, ])"))                                 # siempre las mismas
pasa(cambia("mean(cambio[tratadas]) - mean(cambio[!rownames(e) %in% tratadas])", "mean(cambio[tratadas]) - mean(cambio[setdiff(rownames(e), tratadas)])"))
pasa(cambia("dif_en_dif(sample(otras, 3), e0[otras, ])", "dif_en_dif(sample(otras, size = 3), e0[otras, ])"))
