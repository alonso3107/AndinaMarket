# Diagnóstico y comprobación final

## Capítulo 34 Diagnóstico

Ante un push rechazado, revisa primero la URL y la conexión. Si se llega al servicio, distingue entre una sesión ausente y permisos insuficientes en la rama. Si la sesión y los permisos son correctos, compara los commits antes de actualizar. Una rama protegida se integra mediante una solicitud de cambios.

Un error de ruta se reproduce desde la raíz, comprobando el archivo solicitado y su ruta relativa. Si Git muestra HEAD separado tras abrir una revisión, crea una rama antes de conservar cambios. Un fallo de CI se investiga en el primer paso que falla y se repite con la misma revisión. El laboratorio de la Fase II demuestra un conflicto y conserva los dos cambios. Para un pull con cambios locales, se revisa el diff y se guarda el trabajo antes de obtener los commits del remoto.

La ficha de sitio desactualizado describe un escenario local. Se debe comparar primero el JSON servido con el generado a partir del mismo commit. Si difieren, se restaura el contenido correcto y se registra el resultado antes y después. El diagnóstico de Pages queda como simulación.

## Capítulo 36 Riesgos y controles

| Riesgo | Control | Evidencia |
| --- | --- | --- |
| Pérdida de registros de ventas | Conteo de operaciones | Cinco pruebas y prueba fallida controlada |
| Importe publicado desactualizado | Comparación del JSON generado con Git | Diff sin cambios |
| Pérdida de una copia local | Restauración desde un bundle | Hash y pruebas de la Fase VI |
| Acceso excesivo en CI | Permisos de lectura y referencias fijas | YAML y ejecución de Actions |
| Ruptura de navegación | Prueba de ida y vuelta y foco visible | Capturas de la Fase IV |

La entrega incluye el CSV, el script de cálculo, las pruebas, el sitio, el historial de cambios y las fichas. Los elementos de cuenta, publicación o colaboración que se simularon están marcados en los informes de fase.
