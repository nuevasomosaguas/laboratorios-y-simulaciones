falla(inicio)
falla(cambia("d$grupo * d$sexo", "d$grupo + d$sexo"))                    # suma, no interacción
falla(cambia("all(p >= 0.05)", "any(p < 0.05)"))                         # amplía cuando ya ha salido
falla(cambia("all(p >= 0.05)", "p[1] >= 0.05"))                          # mira solo el primer camino
falla(cambia("  any(p < 0.05)\n}", "  p[1] < 0.05\n}"))                  # publica solo el primer camino
falla(cambia("  any(p < 0.05)\n}", "  all(p < 0.05)\n}"))                # exige que salgan todos
pasa(cambia("all(p >= 0.05)", "min(p) >= 0.05"))
pasa(cambia("  any(p < 0.05)\n}", "  min(p) < 0.05\n}"))
