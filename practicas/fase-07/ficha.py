import argparse
import json
from pathlib import Path


def principal():
    argumentos = argparse.ArgumentParser(description="Resume un repositorio descrito en un JSON local.")
    argumentos.add_argument("archivo", type=Path)
    opciones = argumentos.parse_args()
    repositorio = json.loads(opciones.archivo.read_text(encoding="utf-8"))
    visibilidad = "privado" if repositorio["private"] else "público"
    print(f'Repositorio: {repositorio["full_name"]}')
    print(f'Visibilidad: {visibilidad}')
    print(f'Rama principal: {repositorio["default_branch"]}')
    print(f'Incidencias abiertas: {repositorio["open_issues_count"]}')


if __name__ == "__main__":
    principal()
