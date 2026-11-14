# Seguridad y gestión

## Capítulo 25 Cuenta y autenticación

Se revisaron las exclusiones de archivos de entorno y claves privadas de prueba. La selección de 2FA y sus códigos de recuperación corresponden al titular. Un nuevo acceso SSH se documentó como escenario, con una clave exclusiva por equipo, protección de la clave privada y revisión de la huella del servidor con la fuente oficial.

| Permiso de práctica | Uso mínimo |
| --- | --- |
| Lectura de código | Consultar resultados y documentación |
| Gestión de incidencias | Clasificar reportes sin escribir código |
| Escritura de contribuciones | Publicar ramas de trabajo propias |
| Mantenimiento | Coordinar revisiones y versiones |
| Administración | Configurar reglas y transferencias autorizadas |

Si una clave SSH se filtra, el titular debe revocarla del servicio, generar un par nuevo, reinstalar su parte pública, revisar sesiones y accesos, y registrar el incidente sin copiar material de la clave. Se inspeccionan de forma preventiva archivos de entorno, historiales, logs de CI y capturas.

## Capítulo 26 Dependencias y divulgación

El cálculo usa la biblioteca estándar de Python. En CI se identificaron las acciones de checkout y setup-python, fijadas por commit. Dependabot se configuró para revisarlas semanalmente. Cada propuesta se evalúa leyendo la procedencia, el cambio de permisos y las notas de versión. La configuración de la rama aún debe integrarse para su uso en la rama predeterminada.

Una dependencia sin versión fija y una actualización de procedencia dudosa pertenecen al riesgo de dependencias. Un token en un log y una clave pegada en una incidencia pertenecen al riesgo de secretos. Un workflow con permisos de escritura innecesarios es una mala configuración. La política de reporte se encuentra en [SECURITY.md](../../SECURITY.md).

## Capítulo 27 Auditoría y recuperación

1. Identificar rama y commit.
2. Comprobar el estado del árbol de trabajo.
3. Revisar que los datos sean ficticios.
4. Verificar exclusión de temporales y secretos.
5. Inventariar las dependencias y sus revisiones.
6. Confirmar permisos de los workflows.
7. Verificar la política de reporte.
8. Ejecutar las pruebas.
9. Contrastar la exportación con el JSON versionado.
10. Registrar cambios y riesgos en el PR.
11. Preparar una copia local verificable.
12. Restaurarla y comparar el hash y las pruebas.

La revisión sería obligatoria ante cambios en fórmulas o esquemas de datos, permisos de acceso, workflows o publicación, y licencias o términos. Un respaldo mediante git bundle permite clonar la revisión sin depender del acceso al remoto. La prueba se hizo en una copia temporal y se compararon tanto el hash como la suite.

## Capítulo 28 Organización y equipos

Para una pyme con cuatro proyectos se proponen equipos de Ventas, Inventario, Portal y Soporte. Cada equipo tiene escritura en su proyecto, lectura en los proyectos que consume y revisión cruzada de cambios de integración. La matriz del capítulo 25 cubre cinco perfiles y su acceso mínimo. Se propone usar el registro de cambios y revisar los accesos cuando se incorpora o sale una persona.

Antes de transferir un repositorio se comprueban responsables de origen y destino, referencias protegidas, visibilidad, integración con Actions y Pages, acceso de colaboradores y un respaldo verificable. La transferencia es un escenario de práctica y no se aplicó al repositorio.
