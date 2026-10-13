falla(inicio)
falla(cambia("sign(z) * pmax(abs(z) - lambda, 0)", "pmax(z - lambda, 0)"))                      # solo por arriba
falla(cambia("sign(z) * pmax(abs(z) - lambda, 0)", "ifelse(abs(z) > lambda, z, 0)"))           # umbral duro: no acerca a cero
falla(cambia('c("origen", "capacidad")', 'c("origen")'))                                         # queda abierta la capacidad
falla(cambia('c("origen", "capacidad")', 'c("origen", "capacidad", "ocupacion")'))               # mediador
falla(cambia('c("origen", "capacidad")', 'c("origen", "capacidad", "barrio")'))                  # colisionador
falla(cambia('c("origen", "capacidad")', 'c("origen", "capacidad", "matiz_01")'))                # matiz de sobra
falla(cambia('c("origen", "capacidad")', 'c("origen", "capacidad", "estudios")'))
pasa(cambia('c("origen", "capacidad")', 'c("capacidad", "origen")'))
pasa(cambia("sign(z) * pmax(abs(z) - lambda, 0)", "ifelse(z > lambda, z - lambda, ifelse(z < -lambda, z + lambda, 0))"))
