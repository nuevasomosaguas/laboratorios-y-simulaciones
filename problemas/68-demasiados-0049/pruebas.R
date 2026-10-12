falla(inicio)
falla(cambia("table(cut(p[p < 0.05], seq(0, 0.05, 0.01))) / sum(p < 0.05)", "table(cut(p[p < 0.05], seq(0, 0.05, 0.01))) / length(p)"))  # entre todos, no entre los significativos
falla(cambia("mean(p[p < 0.05] < 0.025)", "mean(p < 0.025)"))                            # entre todos
falla(cambia("sum(z >= 1.96 & z < 1.96 * (1 + ancho))", "sum(z >= 1.96)"))               # sin calibre
falla(cambia("sum(z >= 1.96 & z < 1.96 * (1 + ancho))", "sum(z >= 1.96 & z < 1.96 + ancho)"))  # ancho absoluto, no relativo
pasa(cambia("table(cut(p[p < 0.05], seq(0, 0.05, 0.01))) / sum(p < 0.05)", "prop.table(table(cut(p[p < 0.05], seq(0, 0.05, 0.01))))"))
pasa(cambia("table(cut(p[p < 0.05], seq(0, 0.05, 0.01))) / sum(p < 0.05)", "table(cut(p, seq(0, 1, 0.01)))[1:5] / sum(p < 0.05)"))
pasa(cambia("mean(p[p < 0.05] < 0.025)", "sum(p < 0.025) / sum(p < 0.05)"))
