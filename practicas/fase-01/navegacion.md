# Navegación e historial en GitHub

## Ejemplos 3.1 y 3.2

El encabezado de GitHub ofrece el menú de perfil, la búsqueda y atajos de repositorios, issues y pull requests. Se puede llegar a un proyecto público con la búsqueda por `propietario/repositorio` o abriendo su enlace directo.

| Pestaña | Para qué sirve | Observación en github/docs y AndinaMarket |
| --- | --- | --- |
| Code | Consultar archivos, ramas y commits | GitHub Docs mostraba archivos e historial. AndinaMarket se encontró vacío en la primera visita |
| Issues | Registrar problemas y tareas | GitHub Docs mostraba incidencias. AndinaMarket tenía la pestaña disponible |
| Pull requests | Revisar cambios | GitHub Docs mostraba solicitudes. AndinaMarket tenía la pestaña disponible |
| Actions | Consultar automatizaciones | Las dos interfaces mostraban la pestaña. Su presencia no acredita que haya un flujo ejecutado |
| Settings | Administrar el repositorio | Visible en AndinaMarket con el acceso del titular. No apareció en el repositorio público de referencia |

## Ejemplo 3.3 y reto 3.2 Repositorios de referencia

Se seleccionaron dos resultados por el nombre del proyecto. La comparación considera documentación, licencia e historial, sin descargar ni ejecutar software.

| Repositorio | README | Licencia | Historial |
| --- | --- | --- | --- |
| [github/docs](https://github.com/github/docs) | Explica el proyecto y orienta al lector hacia la guía de contribución | CC BY 4.0 para documentación y MIT para código, según su README | [Historial](https://github.com/github/docs/commits/main/) con sincronizaciones y cambios de contenido |
| [git/git](https://github.com/git/git) | Presenta el código fuente y enlaza a la documentación de Git | GPL versión 2, salvo indicación expresa en el archivo [COPYING](https://github.com/git/git/blob/master/COPYING) | [Historial](https://github.com/git/git/commits/master/) con cambios del proyecto y trabajo integrado |

## Ejemplo 3.4 Seguimiento de una conversación

La [PR 46943](https://github.com/github/docs/pull/46943) describe una sincronización entre repositorios de GitHub Docs. Se abrió para integrar cambios acumulados. El mensaje advierte que conservar el historial es importante para la sincronización. GitHub registra la PR como fusionada. Una lista breve de los artículos cambiados habría facilitado entender su impacto desde la descripción.

## Ejemplo 3.5 Historial

| Commit | Autor visible | Resultado observable |
| --- | --- | --- |
| [d59b263](https://github.com/github/docs/commit/d59b2631959db46d71ca5f7748ec04311c6d0870) | docs-bot | Integra la PR de sincronización 46943 |
| [dd97ed7](https://github.com/github/docs/commit/dd97ed77acc7ea97ed4f5a4249035da87c9ec42e) | Según el enlace público del commit | Ajusta finales de línea de Markdown en `.gitattributes` |
| [c9410e1](https://github.com/github/docs/commit/c9410e126639e71d8501d197a38a1d9712877307) | Según el enlace público del commit | Actualiza la versión de Node.js del entorno en `.devcontainer` |

## Reto 3.1 Mapa de navegación

```text
AndinaMarket
├── Code             ver el CSV, el script y su historial
├── Issues           registrar una incidencia del cálculo
├── Pull requests    comprobar cambios antes de integrarlos
├── Actions          consultar una ejecución de pruebas
├── Projects         ordenar las actividades del curso
└── Settings         revisar visibilidad y configuración
```

## Reto 3.3 Ficha de un issue público

- **Incidencia:** [github/docs #46486](https://github.com/github/docs/issues/46486).
- **Pasos descritos:** abrir la página indicada y localizar el encabezado de edición de archivos generados.
- **Evidencia disponible:** el reporte adjunta una captura y señala una errata en ese encabezado.
- **Estado:** cerrado como completado el 26 de octubre de 2026. La ficha registra el problema documentado en GitHub.
