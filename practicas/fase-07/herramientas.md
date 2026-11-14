# Herramientas avanzadas

## Capítulo 29 GitHub CLI

| Comando | Operación equivalente en GitHub |
| --- | --- |
| gh repo view | Abrir la portada del repositorio |
| gh issue create | Abrir una incidencia desde Issues |
| gh issue view | Abrir la ficha de una incidencia |
| gh pr create | Abrir una solicitud desde Pull requests |
| gh pr view | Consultar ramas y estado de una solicitud |

La evidencia se conserva fuera del repositorio público en el registro de la fase. Se verifica la sesión mostrando solo el resultado de la autenticación y se limita la práctica al repositorio propio.

## Capítulo 30 Entorno de desarrollo

El campo name identifica la copia de desarrollo y el campo image selecciona un entorno Debian con Python 3.12. Para comparar entornos se usa el mismo commit, se confirma Python 3.12, se ejecuta la suite y se compara el JSON generado con Git. La validación local y GitHub Actions sirven de referencia. Codespaces se documentó como escenario, sin iniciar un recurso de cómputo.

Al terminar un Codespace, conserva los cambios necesarios, detén el espacio y verifica su estado. Antes de eliminarlo, confirma que el trabajo esté respaldado. Revisa la cuota y los espacios detenidos que aún ocupen almacenamiento.

## Capítulo 31 Integraciones

El script del laboratorio lee una respuesta JSON ficticia y produce una ficha con nombre, visibilidad, rama e incidencias. El ejercicio de API consulta únicamente metadatos de un repositorio público. Para paginar, se sigue el enlace next de la respuesta hasta agotar las páginas o alcanzar el límite previsto.

Ante un 403, se distingue entre acceso insuficiente y límite de solicitudes. Ante un 429 se respeta Retry-After si existe y se detiene cuando se alcanza el máximo de intentos. Ante un 500 se reintenta de forma acotada una lectura idempotente, con espera creciente. Las demás respuestas se registran con el código y sin datos sensibles.

Una integración de consulta necesita lectura de metadatos y del recurso concreto que lee, como incidencias. No requiere escribir contenido, administrar el repositorio ni heredar secretos. Para recibir webhooks se propone verificar la firma, limitar eventos y guardar el identificador de entrega para evitar duplicados.

## Capítulo 32 Asistencia y revisión

El encargo de práctica para una herramienta de asistencia es proponer cinco pruebas de borde para el cálculo: CSV vacío, una venta, importes con centavos, cantidades cero y caracteres con tilde. Cada caso debe indicar sus datos y salida esperada. La validación se hace recorriendo el código y ejecutando las pruebas.

La revisión defensiva del cálculo se concentró en tres riesgos observables: usar punto flotante para importes, duplicar identificadores de ventas y aceptar cantidades negativas sin advertencia. El código actual usa Decimal. La muestra de práctica mantiene identificadores únicos y cantidades positivas. Las dos últimas condiciones se documentan como supuestos de la muestra.

La asistencia se empleó para preparar código, documentación y comprobaciones. El registro de evidencia identifica las pruebas ejecutadas y conserva su resultado. La revisión humana de la entrega y la sustentación quedan a cargo del estudiante.

## Capítulo 33 Git avanzado

Stash guarda un cambio incompleto antes de cambiar de tarea. Revert corrige una revisión publicada preservando la historia. Cherry-pick lleva una corrección puntual a otra rama cuando corresponde mantener el resto del trabajo separado.

La regresión local se introdujo modificando un importe esperado en una prueba. Con un tramo corto de commits se usó bisect para localizar la revisión exacta. El experimento se ejecutó en un clon. Reordenar commits se limita a una copia de práctica. Un hook local puede comprobar el diff preparado antes del commit. En una rama publicada, se revisa el remoto, se coordina la corrección y se conserva la historia con commits nuevos.
