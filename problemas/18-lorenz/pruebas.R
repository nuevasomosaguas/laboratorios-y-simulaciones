falla(cambia("c(0, cumsum(sort(x))) / sum(x)", "c(0, cumsum(x)) / sum(x)"))     # sin ordenar
falla(cambia("c(0, cumsum(sort(x))) / sum(x)", "cumsum(c(0, sort(x)))"))         # sin dividir por el total
falla(cambia("(2 * n^2 * mean(x))", "(n^2 * mean(x))"))
falla(cambia("sum(abs(outer(x, x, \"-\")))", "sum(outer(x, x, \"-\"))"))          # sin valor absoluto
pasa(cambia("sum(abs(outer(x, x, \"-\"))) / (2 * n^2 * mean(x))",
            "x <- sort(x); 2 * sum(seq_len(n) * x) / (n * sum(x)) - (n + 1) / n"))  # la fórmula ordenada
