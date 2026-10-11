falla(inicio)
falla(cambia("pmin(1, g / m)", "g / m"))                                    # más de un empleo bueno por titulado
falla(cambia("pmin(1, g / m)", "1"))                                        # todos los titulados con empleo bueno
falla(cambia("pmin(1, g / m)", "g"))                                        # el título no ordena: empleo al azar
falla(cambia("N * (m1 - m0) * prima(m0, h)", "N * (m1 - m0) * prima(m1, h)"))  # la prima de después
falla(cambia("N * (m1 - m0) * prima(m0, h)", "N * m1 * prima(m0, h)"))      # todos los titulados, no los nuevos
pasa(cambia("pmin(1, g / m)", "ifelse(m > g, g / m, 1)"))
pasa(cambia("N * (m1 - m0) * prima(m0, h)", "(m1 * N - m0 * N) * unname(salarios(m0, h)[1] - salarios(m0, h)[2])"))
