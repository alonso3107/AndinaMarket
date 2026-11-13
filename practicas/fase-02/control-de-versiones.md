# Prácticas de control de versiones

Los ejercicios se realizaron sobre una copia aislada del caso. El historial de demostración se puede repetir con `bash practicas/fase-02/laboratorio.sh <raíz-de-AndinaMarket> <directorio-temporal-vacío>`. Los hashes nuevos cambian al repetir el laboratorio. El archivo de evidencia de la entrega conserva los que se observaron el 13 de noviembre de 2026.

## Capítulo 05 Línea de base y seguimiento

Los ejemplos 5.1 a 5.5 fijaron el commit inicial, revisaron el directorio de trabajo y el índice, delimitaron una mejora de documentación y probaron cómo volver a la versión anterior de un archivo. Una modificación resulta trazable cuando queda asociada a un commit cuyo mensaje explica el cambio y cuya evidencia permite comprobarlo.

En el reto 5.1 se identificaron tres casos. Un cambio accidental en el CSV puede contrastarse con la última versión confirmada. Dos correcciones sobre el mismo README se pueden integrar conservando ambas aportaciones. Una regresión en el cálculo puede vincularse al commit que la introdujo y revertirse mediante un nuevo commit.

| Reto 5.2 Cambio planificado | Criterio de aceptación |
| --- | --- |
| Aclarar el README | Un lector identifica dónde ejecutar las pruebas y qué resultado revisar |
| Ordenar las ventas por fecha | Se conservan las 12 filas y el total de S/ 1,845.00 |
| Comprobar el conteo de ventas | Una prueba explícita exige 12 operaciones |
| Explicar el filtro por producto | El README identifica qué valor debe usar el filtro propuesto |

Reto 5.3. El cambio guardado puede existir en el archivo y seguir fuera de Git. Después de prepararlo, todavía necesita confirmación.

```text
Archivo editado ── git add ──► Índice ── git commit ──► Historial
    git diff                 git diff --cached           git log
```

## Capítulo 06 Instalación e identidad

En los ejemplos 6.1 a 6.5 y sus tres retos se comprobó una instalación existente de Git, se configuró la identidad del clon y se usó una dirección de GitHub que no revela correo personal. Se inicializó un segundo repositorio, se confirmó un README y se comprobó que el clon de AndinaMarket partía del mismo hash que la copia fuente. La salida de `git --version` y la configuración local quedaron en el registro de ejecución.

## Capítulo 07 Comandos fundamentales

Los ejemplos 7.1 a 7.5 mostraron un archivo modificado y otro sin seguimiento, prepararon solo el README y compararon las versiones. El descarte se limitó a una línea añadida para la prueba y el diff posterior del README quedó vacío.

Para el reto 7.1 se separaron la explicación de las pruebas, el orden de las filas y la comprobación del conteo en tres commits. Así se puede revisar o revertir un cambio sin arrastrar los otros. En 7.2, el diff muestra tanto el encabezado añadido como la instrucción nueva. En 7.3, `git restore -- README.md` devolvió la copia a la versión confirmada tras revisar el alcance.

## Capítulo 08 Ramas e integración

En los ejemplos 8.1 a 8.5 se crearon dos ramas de práctica, se integraron con commits de fusión y se eliminó la rama ya integrada de la corrección. El historial conserva ambos puntos de integración.

El reto 8.1 dejó una aclaración documental en `feature/filtro-productos`. El 8.2 integró una corrección en el `main` local del laboratorio, visible en `git log --graph --oneline`. En 8.3 el archivo sin seguimiento siguió presente al cambiar de rama. Git conservó el archivo porque el cambio de rama no necesitaba reemplazarlo.

## Capítulo 09 Remotos

Se registró la URL del remoto de AndinaMarket. Para poder repetir el experimento, la publicación de la rama principal y la edición desde un segundo clon se hicieron en un remoto local. En los ejemplos 9.1 a 9.5 se revisaron estos remotos y se comparó el estado antes y después de integrar el cambio.

En 9.1 se usó la URL HTTPS del repositorio sin credenciales en el enlace. En 9.2, `git fetch` actualizó la referencia remota y dejó intacto el commit local. `git pull --ff-only` adelantó la rama y mostró el nuevo aviso. La edición en navegador se sustituyó por el segundo clon. En 9.3 se explicó que un push forzado puede quitar de la rama compartida commits que otras personas ya descargaron. Un cambio de historial debe coordinarse con quienes lo usan.

## Capítulo 10 Conflictos y recuperación

Los ejemplos 10.1 a 10.5 y sus retos produjeron un conflicto en `mensajes.md`. Sus dos avisos sobrevivieron a la resolución. `git revert` registró un nuevo commit que retiró un archivo temporal y conservó el commit original. `git stash` guardó y devolvió una edición pendiente. El reflog permitió localizar el estado anterior y crear una rama de recuperación sin mover la rama actual.

La última ejecución pasó cinco pruebas en el clon, incluida la comprobación añadida para el reto 7.1. Los archivos y ramas de laboratorio quedan fuera de la rama de entrega.
