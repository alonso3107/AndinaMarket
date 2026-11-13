# Incidencias y tablero de práctica

## Incidencias

1. **Preservar los importes del CSV.** Al exportar el JSON, verificar 12 operaciones y S/ 1,845.00. Los tres importes por sede deben coincidir con el cuaderno. Adjuntar resultado de las pruebas.
2. **Informar cuando falta el archivo de datos.** Servir una copia del sitio sin `resumen.json`. La página debe mostrar un mensaje de error y mantener oculta la tabla. Restaurar el archivo y verificar que se muestran las tres sedes y el total.
3. **Documentar el arranque en otra plataforma.** Incluir comandos de pruebas, exportación y servidor para Windows y Linux. Cada comando debe usar la ruta del repositorio que corresponda y el README debe enlazar a la guía de contribución.

La primera y la tercera fichas representan trabajo documentado. La segunda es un caso de revisión planteado para una copia local. La [plantilla de incidencias](../../.github/ISSUE_TEMPLATE/error-ventas.md) captura entrada, pasos, salida y comprobación.

## Tablero

| Prioridad | Tarea | Estado de práctica | Motivo |
| --- | --- | --- | --- |
| Alta | Verificar el CSV ficticio | Hecha | Las cifras dependen de esta entrada |
| Alta | Comprobar los totales por sede | Hecha | Hay que detectar diferencias antes de publicar |
| Alta | Exportar y comprobar el JSON | Hecha | La página necesita el archivo |
| Alta | Verificar el caso de JSON ausente | Por comprobar | Afecta a la recuperación del sitio |
| Media | Documentar el arranque en Windows y Linux | Hecha | Facilita reproducir la práctica |
| Media | Preparar la plantilla de incidencias | Hecha | Reduce el esfuerzo de diagnóstico |
| Media | Revisar la documentación en el PR | En revisión | Ayuda a que otra persona pueda repetirla |
| Baja | Evaluar una contribución a GitHub Docs | Propuesta | Es una práctica externa independiente |

El tablero representa una simulación local de GitHub Projects. Los estados enlazan con pruebas y archivos del caso antes de cerrar cada ficha.
