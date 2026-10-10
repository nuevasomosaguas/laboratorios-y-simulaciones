falla(cambia("c(x = gamma / delta, y = alfa / beta)", "c(x = alfa / beta, y = gamma / delta)"))
falla(cambia("k4 <- f(s + h * k3)", "k4 <- f(s + h / 2 * k3)"))
falla(cambia("s + h / 6 * (k1 + 2 * k2 + 2 * k3 + k4)", "s + h / 4 * (k1 + k2 + k3 + k4)"))
falla(cambia("s + h / 6 * (k1 + 2 * k2 + 2 * k3 + k4)", "s + h * k1"))  # Euler disfrazado
pasa(cambia("s + h / 6 * (k1 + 2 * k2 + 2 * k3 + k4)", "s + h * (k1 + 2 * k2 + 2 * k3 + k4) / 6"))
