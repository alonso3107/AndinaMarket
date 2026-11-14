# Andina Market 360

Proyecto didáctico de Git y GitHub. Una tienda ficticia consolida sus ventas en Lima, Ica y Arequipa mediante un script de Python y una página estática.

El docente entregó el cuaderno y dos borradores de documentación. El CSV de esta copia es una muestra elaborada para las prácticas. Se diseñó con 12 ventas y los totales por sede del cuaderno. Las fechas, los productos y los importes individuales son ficticios.

## Archivos

| Carpeta | Contenido |
| --- | --- |
| `data/` | CSV de ventas ficticias |
| `src/` | Cálculo y exportación del resumen |
| `tests/` | Pruebas con la biblioteca estándar de Python |
| [`docs/`](docs/) | Sitio estático y JSON de resultados |

## Ejecutar el proyecto

Requiere Python 3.9 o posterior y Git si deseas clonar el repositorio. Abre una terminal en la carpeta que contiene este archivo. En macOS y Linux ejecuta:

```bash
python3 -m unittest discover -s tests -v
python3 src/resumen.py --json docs/data/resumen.json
python3 -m http.server 8000 --directory docs
```

Abre [localhost:8000](http://localhost:8000) y detén el servidor con Ctrl+C. El resultado esperado es de 12 ventas y S/ 1,845.00.

En Windows, con el lanzador de Python instalado, usa PowerShell:

```powershell
py -3 -m unittest discover -s tests -v
py -3 src/resumen.py --json docs/data/resumen.json
py -3 -m http.server 8000 --directory docs
```

## Contribuir

Consulta [la guía de contribución](CONTRIBUTING.md) para abrir una incidencia, validar un cambio y preparar su revisión.

## Uso responsable

Usa solo datos de práctica. Mantén contraseñas, archivos de entorno y datos personales fuera del repositorio.
