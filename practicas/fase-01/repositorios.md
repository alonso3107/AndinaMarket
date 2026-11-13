# Administración de repositorios

## Ejemplos 4.1 a 4.5

- **4.1** Se comprobó en GitHub el repositorio AndinaMarket, creado por su titular. En la primera visita estaba público y sin commits. El escenario privado del cuaderno se analiza en el reto 4.3.
- **4.2** El README explica el caso, las carpetas y los comandos de pruebas, exportación y servidor. La ejecución se detalló en el reto 4.2.
- **4.3** La copia de práctica contiene `data/`, `src/`, `tests/` y `docs/`. Las rutas coinciden con el inventario del capítulo 1 y se usan en la ejecución.
- **4.4** Se añadió `.gitignore` para caché de Python, entorno virtual, archivos de entorno y residuos de editores. `git ls-files data/ventas.csv` confirma que Git sigue el CSV didáctico.
- **4.5** MIT permite reutilizar el código conservando el aviso de copyright y licencia. Es una opción para el código propio de práctica. La decisión de licenciar corresponde al titular y el material docente tiene su propia procedencia. [Texto de MIT](https://opensource.org/license/mit).

## Reto 4.1 Otra tienda

Diseño propuesto para **Panadería Valle Sur**, una tienda ficticia que registra producción y mermas.

| Carpeta | Función |
| --- | --- |
| `data/` | Muestra de unidades horneadas, vendidas y descartadas |
| `src/` | Calcula mermas por producto y turno |
| `tests/` | Verifica unidades, totales y turnos sin producción |
| `docs/` | Presenta una guía de operación y un resumen para el encargado |
| `config/` | Define turnos de muestra y umbrales de merma |

## Reto 4.2 README reproducible

Se completó el borrador docente con la procedencia de los datos, la versión de Python necesaria y los comandos para generar el JSON y abrir el sitio. Se ejecutaron cuatro pruebas y se verificó en el navegador que la página leyera el JSON. El [README](../../README.md) conserva los pasos.

## Reto 4.3 Visibilidad y riesgos

Al pasar de privado a público, cualquiera puede consultar y clonar el código y su historial. La revisión previa debe cubrir lo siguiente.

| Riesgo | Comprobación |
| --- | --- |
| Secretos en versiones anteriores | Revisar archivos y commits, incluidos los eliminados |
| Datos personales | Revisar CSV, configuraciones, correos de Git y capturas |
| Material sin permiso de distribución | Identificar su procedencia y dejar fuera el PDF docente |
| Acceso de publicación | Revisar colaboradores y permisos de automatización |
| Exposición accidental | Revisar el contenido de la rama destinada a publicación |

El análisis se documentó con un repositorio que ya era público. El cambio de visibilidad se plantea como escenario de revisión.
