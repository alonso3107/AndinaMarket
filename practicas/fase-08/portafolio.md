# Portafolio y sustentación

## Perfil

Prácticas de soporte técnico y desarrollo con Python, Git y GitHub. El trabajo se organiza por entregas pequeñas que puedan comprobarse y reproducirse.

## Proyecto principal

[Andina Market 360](https://github.com/alonso3107/AndinaMarket) consolida las ventas de una tienda ficticia con tres sedes. Presenta el total en terminal y en una página estática.

## Herramientas

Python calcula el resumen y ejecuta pruebas. Git conserva el historial y permite volver a una revisión anterior. GitHub Actions valida dos versiones de Python.

## Evidencias

La [solicitud de automatización](https://github.com/alonso3107/AndinaMarket/pull/5) documenta la validación. La [página de productos](../../docs/productos.html) presenta un segundo resultado a partir de los mismos datos.

## Uso responsable

Se trabaja con una muestra ficticia. Los cambios que afecten el cálculo o el acceso requieren evidencia y revisión antes de publicarse.

## Ficha profesional

Andina Market 360 es un proyecto académico que convierte un archivo de ventas ficticias en un resumen verificable y una página web. El caso reúne doce operaciones de Lima, Ica y Arequipa. Python calcula los importes con precisión decimal, agrupa las ventas por sede y genera el archivo JSON que consultan las páginas de ventas y productos.

La muestra reproduce los totales de referencia del cuaderno. La comprobación incluye cinco pruebas unitarias y una ejecución en GitHub Actions con dos versiones de Python. Git permite revisar la evolución del proyecto, comparar cambios y recuperar una revisión anterior. El repositorio contiene documentación de arranque, plantillas para informar y revisar cambios, y un procedimiento de respaldo comprobado en una copia local.

Durante la demostración se ejecuta el cálculo, se repiten las pruebas, se compara el JSON generado con el archivo versionado y se navega entre las dos páginas del sitio. La evidencia conserva los resultados observados. El caso usa únicamente datos ficticios y se propone como muestra de trabajo para soporte técnico, mantenimiento de código y revisión de cambios en equipos pequeños.

## Ensayo de tres minutos

- Primer minuto. Mostrar el problema del caso y cómo se calculan los importes.
- Segundo minuto. Ejecutar las pruebas y comparar el JSON.
- Tercer minuto. Abrir la portada y Productos, y mostrar la solicitud de cambios.

## Sustentación de cinco minutos

1. Presentar el caso ficticio y la procedencia del CSV.
2. Ejecutar `python3 src/resumen.py` y comprobar las tres sedes y el total.
3. Ejecutar `python3 -m unittest discover -s tests -v` y contar las cinco pruebas aprobadas.
4. Regenerar el JSON y ejecutar `git diff --exit-code -- docs/data/resumen.json`.
5. Abrir el sitio local y mostrar el historial de los cambios entregados.
