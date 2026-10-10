falla(cambia("deseo * creencia >= 0.3 & oportunidad", "deseo * creencia >= 0.3"))
falla(cambia("tasa(deseo, creencia, TRUE)", "tasa(deseo, creencia, oportunidad)"))
pasa(cambia("deseo * creencia >= 0.3 & oportunidad", "oportunidad & deseo * creencia >= 0.3"))
