import json
import tempfile
import unittest
from pathlib import Path

from src.resumen import guardar_json, resumir_ventas


class PruebasResumen(unittest.TestCase):
    def test_total_general(self):
        self.assertEqual(resumir_ventas()["total"], "1845.00")

    def test_totales_por_sede(self):
        self.assertEqual(
            resumir_ventas()["ventas_por_sede"],
            {"Arequipa": "476.00", "Ica": "555.00", "Lima": "814.00"},
        )

    def test_conteo_de_ventas(self):
        self.assertEqual(resumir_ventas()["operaciones"], 12)

    def test_preguntas_del_caso(self):
        resumen = resumir_ventas()
        self.assertEqual(resumen["unidades_por_producto"], {"Aceite": 30, "Arroz": 35, "Café": 27})
        self.assertEqual(resumen["ventas_por_mes"], {"2026-09": "735.00", "2026-10": "1110.00"})

    def test_exportacion_json(self):
        with tempfile.TemporaryDirectory() as directorio:
            ruta = Path(directorio) / "datos" / "resumen.json"
            esperado = resumir_ventas()
            guardar_json(esperado, ruta)
            self.assertEqual(json.loads(ruta.read_text(encoding="utf-8")), esperado)


if __name__ == "__main__":
    unittest.main()
