# Publicación y distribución

## Capítulo 17 Reglas y archivo

Las tres reglas propuestas para la rama principal son exigir una solicitud de cambios, requerir que las pruebas pasen y bloquear el push forzado. La primera deja una revisión rastreable, la segunda evita que un fallo ya detectado llegue a la rama común y la tercera preserva los commits compartidos. Se documenta la propuesta porque la rama predeterminada del caso todavía es la base de trabajo.

La plantilla de incidencias conserva los pasos para reproducir un error. La plantilla de pull request pide contrastar el CSV, el JSON y el sitio. Desarrollo mantiene el cálculo, datos revisa la muestra y revisión verifica que las pruebas respalden la publicación. Para archivar al cierre del curso, se propone registrar el último commit, incluir el informe y los enlaces a evidencias, comprobar que no haya datos personales y conservar el acceso de lectura durante el periodo indicado por la universidad.

## Capítulo 18 Versiones y lanzamiento

| Versión | Alcance propuesto | Razón |
| --- | --- | --- |
| 0.1.0 | Primera versión de práctica con resumen y página de productos | La interfaz pública todavía está en desarrollo |
| 0.1.1 | Ajuste de un enlace o texto sin cambios en los datos | Corrección dentro de la misma versión |
| 0.2.0 | Filtros de producto o criterios de navegación adicionales | Nueva función antes de estabilizar la versión 1 |

La etiqueta anotada `v0.1.0` se comprueba en un clon de laboratorio. Una etiqueta de Git identifica un commit. Una Release de GitHub puede usar esa etiqueta y añadir notas y un paquete descargable. Para recuperar una versión, se abre un clon o un directorio de prueba en el commit etiquetado y se verifica antes de cambiar la publicación.

El [registro de cambios](../../CHANGELOG.md) tiene cinco entradas comprobables. El paquete local contiene el sitio estático que se podría adjuntar a la Release. La publicación de la Release se preparó como simulación.

## Capítulo 19 Página de productos

El sitio local tiene una portada por sede y una [página de productos](../../docs/productos.html) que muestra cantidades del mismo JSON. El script de Python se ejecuta antes de publicar y genera el archivo de datos. El servidor del sitio solo entrega HTML, CSS, JavaScript y JSON.

En el navegador se comprobó la navegación de ida y vuelta por teclado, el contorno visible de foco y la presencia de encabezados de fila y columna en la tabla. También se confirmó el idioma español del documento. Estas comprobaciones cubren los controles revisados en el laboratorio.

La ruta propuesta para Pages es publicar la carpeta `docs/` desde una rama integrada, de acuerdo con [la guía de GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site). El sitio se probó en localhost. Pages queda pendiente de activación.

## Capítulo 20 Archivos y empaquetado

Se revisó el tamaño de los archivos versionados. Se permite código, documentación, datos ficticios y recursos del sitio. Se excluyen entornos virtuales, cachés, archivos de configuración privada y binarios de trabajo. Si un recurso grande fuera necesario y estuviera autorizado, se documentaría su procedencia y se evaluaría Git LFS. El archivo de prácticas no lo requiere por su tamaño.

El paquete del sitio se genera a partir de `docs/`. Se comprueba el contenido del ZIP, su tamaño y su SHA-256 en el registro de evidencia. El paquete excluye código de cálculo, historial Git y archivos ajenos al sitio.

Para distribuir en el futuro la librería de resumen se propone un `pyproject.toml` con el nombre `andina-market-resumen`, versión inicial `0.1.0`, descripción breve, Python 3.9 como versión mínima y dependencias de ejecución vacías. El comando de uso y su licencia se documentarán antes de publicar la librería.
