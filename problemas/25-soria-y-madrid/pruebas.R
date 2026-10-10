falla(inicio)
falla(cambia("order(cocientes, decreasing = TRUE)[1:escanos]", "order(cocientes)[1:escanos]"))
falla(cambia("order(cocientes, decreasing = TRUE)[1:escanos]", "order(cocientes, decreasing = TRUE)"))
falla(cambia("1 / sum((x / sum(x))^2)", "1 / sum(x^2)"))                 # sin proporciones
falla(cambia("1 / sum((x / sum(x))^2)", "length(x[x > 0])"))              # contar partidos
pasa(cambia("1 / sum((x / sum(x))^2)", "sum(x)^2 / sum(x^2)"))
pasa(cambia("apoyo <- c(A = 33, B = 31", "apoyo <- c(A = 45, B = 25"))  # otros votos
