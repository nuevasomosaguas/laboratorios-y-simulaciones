falla(inicio)
falla(cambia("(m1 + m2) / 2", "m1"))                 # valora la composición con las tasas de un país: suma bien, pero no es Kitagawa
falla(cambia("(c1 + c2) / 2)", "c1)"))
falla(cambia("(m1 + m2) / 2", "(m1 + m2)"))          # sin dividir por dos
falla(cambia("sum((c1 - c2) * (m1 + m2) / 2)", "sum((m1 - m2) * (c1 + c2) / 2)"))
pasa(cambia("sum((c1 - c2) * (m1 + m2) / 2)", "sum((c1 - c2) * (m1 + m2)) / 2"))
falla(cambia("tasas = sum((m1 - m2) * (c1 + c2) / 2)", "tasas = sum((m1 - m2) * c2)", cambia("(m1 + m2) / 2", "m1")))  # asimétrica: suma exacto
