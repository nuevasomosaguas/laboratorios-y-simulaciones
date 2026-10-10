# laboratorios-y-simulaciones

Problemas de ciencias sociales cuantitativas que se resuelven con R en el navegador, al estilo de Exercism o freeCodeCamp: enunciado a la izquierda, editor y resultados a la derecha. R corre con [webR](https://docs.r-wasm.org/webr/latest/) y los ejercicios con [quarto-live](https://r-wasm.github.io/quarto-live/), así que el sitio es estático y se publica en GitHub Pages. Sin clasificación: el progreso se guarda solo en el navegador de cada cual.

## Proponer un problema

Cada problema es una carpeta autónoma, y cualquiera puede proponer su clásico favorito con un pull request:

1. Copia `_plantilla/` a `problemas/NN-nombre-corto/`, con el siguiente número libre.
2. Escribe `index.qmd`: el enunciado, el código de partida con uno o dos huecos (`______`), la solución, la comprobación y «Qué está pasando». La cabecera lleva `numero`, `nivel` (1, 2, 3: ordena el índice), `dificultad` (el nombre del nivel), `duracion`, `lectura`, `semana` si enlaza con una del bootcamp, `categories` y `engine: markdown`.
3. Escribe `pruebas.R` con los errores típicos que la comprobación tiene que rechazar.
4. Comprueba que todo está en orden:

   ```bash
   Rscript probar.R problemas/NN-nombre-corto
   ```

`probar.R` ejecuta la solución y la comprobación igual que quarto-live, pero sin navegador, y GitHub lo repite en cada pull request. La plantilla del pull request tiene la lista de lo que hay que revisar antes de enviarlo.

## Verlo en local

```bash
quarto preview
```
