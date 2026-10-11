falla(inicio)
falla(cambia("if (multa > 0) multa else culpa * 2^(-x / 0.15)", "culpa * 2^(-x / 0.15) + multa"))      # la multa sumada a la culpa
falla(cambia("if (multa > 0) multa else culpa * 2^(-x / 0.15)", "if (multa > 0) multa else culpa"))  # la culpa no depende de los demás
falla(cambia("if (multa > 0) multa else culpa * 2^(-x / 0.15)", "if (multa > 0) multa else culpa * (1 - x / 0.15)"))
falla(cambia("mean(prisa > culpa * 2^(-antes / 0.15) + multa)", "equilibrio(antes, prisa, culpa, multa)"))  # el modelo completo
falla(cambia("mean(prisa > culpa * 2^(-antes / 0.15) + multa)", "mean(prisa > culpa + multa)"))              # la culpa sin nadie tarde
falla(cambia("mean(prisa > culpa * 2^(-antes / 0.15) + multa)", "antes"))
pasa(cambia("if (multa > 0) multa else culpa * 2^(-x / 0.15)", "ifelse(multa > 0, multa, culpa / 2^(x / 0.15))"))
pasa(cambia("mean(prisa > culpa * 2^(-antes / 0.15) + multa)", "sum(prisa - multa > culpa * 0.5^(antes / 0.15)) / N"))
