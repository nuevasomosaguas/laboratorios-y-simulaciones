# Errores típicos que la comprobación tiene que rechazar, y variantes buenas que tiene que aceptar.
# cambia(de, a) sustituye un trozo de la solución; si no lo encuentra, la prueba se detiene.
falla(cambia("sum(x)", "mean(x)"))
pasa(cambia("sum(x)", "Reduce(`+`, x)"))
