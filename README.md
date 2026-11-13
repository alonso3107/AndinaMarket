# Andina Market 360

Proyecto didáctico de Git y GitHub. Una tienda ficticia consolida sus ventas en Lima, Ica y Arequipa mediante un script de Python y una página estática.

El docente entregó el cuaderno y dos borradores de documentación. El CSV de esta copia es una muestra elaborada para las prácticas. Se diseñó con 12 ventas y los totales por sede del cuaderno. Las fechas, los productos y los importes individuales son ficticios.

## Archivos

| Carpeta | Contenido |
| --- | --- |
| `data/` | CSV de ventas ficticias |
| `src/` | Cálculo y exportación del resumen |
| `tests/` | Pruebas con la biblioteca estándar de Python |
| `docs/` | Sitio estático y JSON de resultados |

## Ejecutar el proyecto

Desde la raíz, con Python 3 y sin dependencias externas:

```bash
python3 -m unittest discover -s tests -v
python3 src/resumen.py --json docs/data/resumen.json
python3 -m http.server 8000 --directory docs
```

Abre [localhost:8000](http://localhost:8000) y detén el servidor con Ctrl+C. El resultado esperado es de 12 ventas y S/ 1,845.00.

## Uso responsable

Usa solo datos de práctica. Mantén contraseñas, archivos de entorno y datos personales fuera del repositorio.
