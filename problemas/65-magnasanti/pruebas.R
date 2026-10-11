falla(inicio)
falla(cambia("  lejos <- suma_vecindad(ind, 2) - cerca", "  lejos <- suma_vecindad(ind, 2)"))   # el anillo exterior incluye el interior
falla(cambia("  cerca <- suma_vecindad(ind, 1)", "  cerca <- suma_vecindad(ind, 2)"))       # radio equivocado
falla(cambia("  cerca + 0.5 * lejos", "  0.5 * cerca + lejos"))                           # pesos al revés
pasa(cambia("  lejos <- suma_vecindad(ind, 2) - cerca", "  lejos <- suma_vecindad(ind, 2) - suma_vecindad(ind, 1)"))
