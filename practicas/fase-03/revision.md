# Colaboración y revisión

## Capítulo 11 Interfaz gráfica

GitHub Desktop y VS Code no estaban instalados en el equipo. Se documentó la equivalencia con terminal y se usó el laboratorio de la Fase II como evidencia de los comandos.

| Acción gráfica | Equivalencia comprobada en el laboratorio |
| --- | --- |
| Abrir repositorio local | `git status --short --branch` desde su raíz |
| Confirmar una edición seleccionada | `git add README.md` y `git commit -m "docs: aclara la comprobación de ventas"` |
| Crear y abrir una rama | `git switch -c feature/filtro-productos` |
| Examinar una diferencia | `git diff -- README.md` |
| Descartar una edición de prueba | `git restore -- README.md` después de comprobar el diff |

No se creó un commit desde Desktop ni se descartó un cambio desde VS Code. Al comparar ambos métodos, autor, mensaje, fecha, archivos y padre siguen formando parte del commit.

## Capítulo 14 Pull request

La rama de esta entrega reúne la documentación de una fase. Los criterios de revisión son los siguientes.

1. El README debe indicar requisitos y comandos de Windows y Linux.
2. La tabla debe documentar cuatro indicadores con su fuente.
3. La plantilla de errores debe pedir pasos, resultados y datos reproducibles.
4. El tablero debe incluir ocho tareas y justificar sus prioridades.
5. Los enlaces internos deben resolver y las cuatro pruebas de la base deben pasar.

La actualización del [PR 1](https://github.com/alonso3107/AndinaMarket/pull/1) incorporó un commit adicional a su misma solicitud. En cambio, el [PR 2](https://github.com/alonso3107/AndinaMarket/pull/2) abrió una conversación nueva con una rama y un alcance distintos. La solicitud y la fusión por otra persona se describen como pasos de revisión. La evidencia disponible corresponde al autor y a los resultados locales.

## Capítulo 15 Revisión de código

Para revisar el dashboard conviene responder estas diez preguntas.

1. ¿Se identifica el CSV que originó el resultado?
2. ¿Se preserva el número de operaciones?
3. ¿El total se calcula desde cantidades y precios?
4. ¿Se mantienen dos decimales?
5. ¿Las sedes de la página corresponden al JSON?
6. ¿La exportación se puede repetir con los mismos datos?
7. ¿El sitio indica qué pasó si falta el JSON?
8. ¿Se evitan datos personales en archivos y capturas?
9. ¿El cambio tiene una comprobación reproducible?
10. ¿La documentación explica cómo renovar los datos?

**Bloqueo de ejemplo.** Sustituir el total leído desde el JSON por S/ 1,845.00 haría que la página conserve el valor anterior cuando cambie el CSV. Para reproducirlo, en una copia de laboratorio aumenta en S/ 1.00 el precio de una fila, regenera el JSON y compara el total exportado con el de la página. El importe debe cambiar según la cantidad de esa fila.

**Sugerencias de revisión.** Añadir al README un ejemplo de error de carga y enlazar desde el tablero a las comprobaciones de cada tarea hecha. **Evaluación local.** La documentación queda aprobada para revisión cuando sus enlaces resuelven y los resultados de ventas coinciden con las pruebas. Este texto es una revisión de práctica, no una aprobación registrada por otra cuenta.

## Capítulo 16 Contribución externa

[GitHub Docs](https://github.com/github/docs/blob/main/.github/CONTRIBUTING.md) tiene una guía pública de contribución y limita qué archivos acepta de colaboradores externos. Una propuesta sería aportar un ejemplo de cómo registrar en una captura el resultado de una práctica de Git sin divulgar datos personales. Antes de enviar el cambio, se debe comprobar si la guía ya cubre el punto y abrir la conversación por el canal indicado.

```text
1. Leer la guía → 2. Crear fork → 3. Crear rama → 4. Confirmar el cambio → 5. Preparar el PR
```

Tres responsabilidades son respetar licencias y atribuciones, comprobar el cambio con evidencia y seguir las normas de trato de la comunidad. El ejercicio se preparó localmente y no abrió una solicitud en el repositorio de terceros.
