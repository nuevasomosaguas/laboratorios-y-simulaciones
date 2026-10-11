falla(inicio)
falla(cambia("1 - exp(-R0 * s0 * z)", "1 - exp(-R0 * z)"))                    # sin los susceptibles
falla(cambia("1 - exp(-R0 * s0 * z)", "exp(-R0 * s0 * z)"))                    # la fracción que se libra
falla(cambia("1 - exp(-R0 * s0 * z)", "1 - exp(-R0 * (1 - s0) * z)"))          # los vacunados en lugar de los susceptibles
falla(cambia("1 - casos$infectados / sin_vacuna", "casos$infectados / sin_vacuna"))   # los que quedan
falla(cambia("1 - casos$infectados / sin_vacuna", "sin_vacuna - casos$infectados"))   # en puntos de población
pasa(cambia("1 - exp(-R0 * s0 * z)", "-expm1(-s0 * R0 * z)"))
pasa(cambia("1 - casos$infectados / sin_vacuna", "(sin_vacuna - casos$infectados) / sin_vacuna"))
