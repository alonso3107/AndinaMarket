import argparse
import csv
import json
from collections import defaultdict
from decimal import Decimal
from pathlib import Path

RUTA_VENTAS = Path(__file__).resolve().parents[1] / "data" / "ventas.csv"


def resumir_ventas(ruta=RUTA_VENTAS):
    ventas_por_sede = defaultdict(Decimal)
    ventas_por_mes = defaultdict(Decimal)
    unidades_por_producto = defaultdict(int)
    operaciones = 0

    with ruta.open(encoding="utf-8", newline="") as archivo:
        for venta in csv.DictReader(archivo):
            cantidad = int(venta["cantidad"])
            importe = cantidad * Decimal(venta["precio_unitario"])
            ventas_por_sede[venta["sede"]] += importe
            ventas_por_mes[venta["fecha"][:7]] += importe
            unidades_por_producto[venta["producto"]] += cantidad
            operaciones += 1

    return {
        "operaciones": operaciones,
        "total": format(sum(ventas_por_sede.values(), Decimal(0)), ".2f"),
        "ventas_por_sede": {
            sede: format(importe, ".2f") for sede, importe in sorted(ventas_por_sede.items())
        },
        "ventas_por_mes": {
            mes: format(importe, ".2f") for mes, importe in sorted(ventas_por_mes.items())
        },
        "unidades_por_producto": dict(sorted(unidades_por_producto.items())),
    }


def guardar_json(resumen, destino):
    destino.parent.mkdir(parents=True, exist_ok=True)
    destino.write_text(json.dumps(resumen, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main():
    argumentos = argparse.ArgumentParser(description="Resume las ventas ficticias de Andina Market.")
    argumentos.add_argument("--json", type=Path, metavar="RUTA", help="guarda el resumen en JSON")
    opciones = argumentos.parse_args()
    resumen = resumir_ventas()

    print(f'Operaciones: {resumen["operaciones"]}')
    for sede, total in resumen["ventas_por_sede"].items():
        print(f"{sede}: S/ {total}")
    print(f'Total: S/ {resumen["total"]}')

    if opciones.json:
        guardar_json(resumen, opciones.json)


if __name__ == "__main__":
    main()
