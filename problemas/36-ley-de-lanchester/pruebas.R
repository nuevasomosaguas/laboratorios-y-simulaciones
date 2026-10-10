falla(inicio)
falla(cambia("bajas_rojas <- b * azules\n      bajas_azules <- r * rojos",
             "bajas_rojas <- r * rojos\n      bajas_azules <- b * azules"))       # cada bando se dispara a sí mismo
falla(cambia("bajas_rojas <- b * azules\n      bajas_azules <- r * rojos",
             "bajas_rojas <- r * azules\n      bajas_azules <- b * rojos"))       # eficacias cruzadas
falla(cambia('combate(primera[["rojos"]], azules2, ...)', "combate(rojos, azules1 + azules2, ...)"))  # todos juntos
falla(cambia('combate(primera[["rojos"]], azules2, ...)', "combate(rojos, azules2, ...)"))           # los rojos, como nuevos
falla(cambia('combate(primera[["rojos"]], azules2, ...)', 'combate(primera[["rojos"]], azules2)'))  # pierde la ley
pasa(cambia("bajas_rojas <- b * azules", "bajas_rojas <- azules * b"))
pasa(cambia("calidad = combate(100, 300, r = 10)", "calidad = combate(100, 300, r = 9)"))  # tarea 4
