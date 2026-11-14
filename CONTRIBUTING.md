# Contribuir a Andina Market 360

Describe la necesidad con un ejemplo reproducible. Para un cambio en el cálculo, indica la salida esperada y la observada usando el CSV ficticio.

Crea una rama con un nombre que indique el propósito. Mantén cada commit centrado en una decisión y explica qué cambia con un mensaje convencional en español. Antes de abrir un PR, revisa el diff y ejecuta las pruebas desde la raíz.

```bash
python3 -m unittest discover -s tests -v
```

Si cambia el cálculo o el CSV, regenera `docs/data/resumen.json` y comprueba el resultado en el sitio local. En el PR, indica qué necesidad resuelve, con qué entrada se comprobó y qué resultado obtuviste. Limita las capturas y archivos a datos de práctica.
