# Automatización y publicación

## Capítulo 21 GitHub Actions

El workflow principal responde a push y pull requests y permite una ejecución manual cuando está disponible en la rama predeterminada. El workflow reutilizable selecciona Ubuntu, fija revisiones de las acciones oficiales y limita el token a lectura del contenido. La acción de descarga no deja almacenadas sus credenciales. GitHub muestra cada ejecución y los jobs por versión de Python.

Tres problemas requieren una corrección distinta de ampliar permisos. Un YAML inválido se comprueba contra su estructura. Un fallo de cálculo se reproduce con la prueba que falló. Una versión de Python incompatible se contrasta con las versiones admitidas. Si no aparece un job, se revisan la ruta del workflow, el evento, los filtros, la rama y el resumen de ejecución.

## Capítulo 22 Integración continua

La prueba de conteo verifica que el CSV ficticio contiene doce ventas. En un clon temporal se retiró una fila y se comprobó que la prueba registrara once en lugar de doce. Tras restaurar el CSV, pasó la misma prueba. La salida de ambas ejecuciones se guardó junto al informe. La política propuesta exige que los jobs de la matriz pasen antes de integrar una solicitud de cambios. El requisito queda como propuesta de configuración de rama.

## Capítulo 23 Comprobaciones de publicación

1. Confirmar la rama y el commit de origen.
2. Revisar que el CSV contenga solo datos ficticios.
3. Ejecutar las pruebas de Python.
4. Regenerar el JSON del sitio.
5. Comparar el JSON regenerado con el versionado.
6. Abrir la portada y comprobar el total.
7. Abrir Productos y comprobar sus cantidades.
8. Probar los enlaces de ida y vuelta por teclado.
9. Registrar el commit y la huella del paquete.
10. Conservar la última versión aprobada para recuperación.

El despliegue queda separado de CI. El workflow valida los datos y no publica. Para detectar cifras desactualizadas se compara el JSON generado con el versionado y se contrasta el total publicado con el resultado de la misma revisión. Si una publicación no es correcta, prepara un PR que restaure el último paquete válido, registra los dos commits y repite las comprobaciones tras publicar. La prueba de humo del sitio se verificó en localhost durante la Fase IV.

## Capítulo 24 Automatización avanzada

La matriz combina Python 3.10 y 3.12. Cada entorno ejecuta la misma suite y comprueba la regeneración del resumen. El registro de Actions identifica la versión y el resultado de cada job. La ejecución semanal propuesta se limita a la lectura y validación de la copia de repositorio. La revisión humana controla cualquier modificación del CSV o del resumen publicado.

Para reutilizar un workflow, limita los permisos del token, fija las acciones externas a un commit verificado y declara los secretos uno a uno cuando sean imprescindibles. Este workflow solo necesita el permiso de lectura y no recibe secretos del llamador.
