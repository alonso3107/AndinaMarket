# Proyecto Andina Market 360

## Objetivo
- Problema: las ventas de tres sedes deben consolidarse sin llenar informes manualmente.
- Usuario principal: responsable de operaciones de la tienda ficticia.
- Usuario de revisión: responsable de comprobar cifras y publicación.
- Resultado esperado: resumen por sede y por mes generado desde el CSV.

## Herramientas
- Git: registra versiones y cambios de archivos en la computadora.
- GitHub: aloja el repositorio y permite revisar cambios con otras personas.
- Python: ejecuta el programa que calcula las ventas.

## Flujo de trabajo
1. Modifico archivos locales.
2. Git registra los cambios en un repositorio local.
3. Envío los cambios al repositorio remoto de GitHub, cuando lo configure.
4. Otras personas pueden revisar los cambios en una pull request.

## Comprobación
Para guardar y revisar cambios, GitHub no necesita ejecutar src/resumen.py. Python ejecuta el código localmente. GitHub Actions podría ejecutar pruebas, pero solo si lo configuramos.

## Criterios de éxito

| Indicador | Meta | Responsable | Evidencia |
| --- | --- | --- | --- |
| Operaciones procesadas | 12 | Análisis de datos | Salida de `src/resumen.py` |
| Venta por sede | Lima 814.00, Ica 555.00 y Arequipa 476.00 soles | Análisis de datos | CSV y prueba por sede |
| Integridad del resumen | Cuatro pruebas pasan | Revisión | Salida de `unittest` |
| Publicación local | El sitio carga el JSON generado y muestra el total | Mantenimiento | Captura del sitio local |

## Preguntas comerciales

- ¿Qué sede lidera? Lima, con S/ 814.00.
- ¿Qué producto vende más por unidades? Arroz, con 35 unidades.
- ¿Cómo cambia el total mensual? Pasa de S/ 735.00 en septiembre a S/ 1,110.00 en octubre.
- Reto 1.1. ¿Qué sede queda más cerca de S/ 500.00? Arequipa, a S/ 24.00. La respuesta se obtiene comparando `ventas_por_sede` en `docs/data/resumen.json`.

## Inventario

| Carpeta | Función | Revisión propuesta |
| --- | --- | --- |
| `data/` | Conserva las ventas ficticias de origen | Responsable de datos |
| `src/` | Calcula totales y exporta JSON | Responsable de desarrollo |
| `tests/` | Contrasta el cálculo con resultados esperados | Responsable de revisión |
| `docs/` | Presenta las cifras generadas | Responsable de desarrollo |
| `practicas/` | Documenta los laboratorios | Responsable de revisión |

El HTML consulta el JSON generado desde el CSV. Así, la misma fuente alimenta la terminal, las pruebas y el sitio.

## Reto 1.2 Mapa de funciones

| Rol propuesto | Responsabilidad | Evidencia de revisión |
| --- | --- | --- |
| Desarrollo | Mantener el cálculo y regenerar el JSON | Comparar la salida del script con el JSON |
| Datos | Mantener la muestra ficticia y documentar las columnas | Comprobar 12 filas y ausencia de datos personales |
| Revisión | Ejecutar las pruebas y comprobar la pantalla final | Registrar la salida de pruebas y la captura |

Los roles son funciones del ejercicio. La revisión de consistencia del mapa se realiza contrastando las tres evidencias con sus responsabilidades.

## Reto 1.3 Clasificar acciones

| Acción | Herramienta | Motivo |
| --- | --- | --- |
| Consultar cambios pendientes | Git local | `git status` lee el estado de trabajo |
| Confirmar un cambio | Git local | `git commit` registra una versión |
| Abrir una revisión | GitHub | La pull request reúne el diff y la discusión |
| Organizar incidencias | GitHub | Issues registra trabajo y decisiones |
| Calcular ventas | Herramienta externa | Python lee el CSV y genera el resumen |
