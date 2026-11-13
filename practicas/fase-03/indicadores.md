# Indicadores de ventas

Los cuatro indicadores se generan desde `data/ventas.csv`. Abre [el JSON generado](../../docs/data/resumen.json) para comprobar los valores publicados.

| Indicador | Resultado de la muestra | Fuente y comprobación |
| --- | --- | --- |
| Número de ventas | 12 | `operaciones`. Cuenta las filas de ventas |
| Importe total | S/ 1,845.00 | `total`. Suma cantidad por precio unitario |
| Sede con mayor importe | Lima, S/ 814.00 | `ventas_por_sede`. Compara los tres importes |
| Producto más vendido por unidades | Arroz, 35 unidades | `unidades_por_producto`. Compara las cantidades |

Los ejemplos 12.1 a 12.5 se comprueban con el README, esta tabla, los comandos, las rutas relativas y la guía de contribución. Para el reto 12.1 se documentaron las variantes de macOS y Linux y Windows. Los comandos se ejecutaron en macOS, con Python y opciones disponibles en Linux. La variante de Windows se presenta para reproducirla en ese entorno.

Para el reto 12.3 se corrigieron cinco defectos en un README de laboratorio. Se añadió un espacio después de la almohadilla del título, se cerró el bloque de comandos, se corrigió la ruta del resumen, se reparó el enlace a la guía de contribución y se añadió la línea separadora de encabezados de la tabla.
