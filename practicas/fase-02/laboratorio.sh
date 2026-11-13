#!/bin/bash
set -Eeuo pipefail
export LC_ALL=C PYTHONDONTWRITEBYTECODE=1
raiz=$1
temporal=$2
[[ -d "$temporal" && -z "$(ls -A "$temporal")" ]] || { printf "El directorio temporal debe estar vacío.\n" >&2; exit 2; }
git --version
git clone -q --no-hardlinks "$raiz" "$temporal/copia"
cd "$temporal/copia"
git config user.name 'Alonso Flores'
git config user.email '190709810+alonso3107@users.noreply.github.com'
git config commit.gpgsign false
git config core.editor true
git switch -C main
partida=$(git rev-parse HEAD)
test "$partida" = "$(git -C "$raiz" rev-parse HEAD)"
printf '\nCAPÍTULOS 05 y 06 · Base, identidad e historial\n'
git log -3 --oneline
git config --local --get user.name
git config --local --get user.email
git status --short --branch
PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v
git init -q -b main "$temporal/inicio"
git -C "$temporal/inicio" config user.name 'Alonso Flores'
git -C "$temporal/inicio" config user.email '190709810+alonso3107@users.noreply.github.com'
git -C "$temporal/inicio" config commit.gpgsign false
printf '# Práctica de inicialización\n' > "$temporal/inicio/README.md"
git -C "$temporal/inicio" add README.md
git -C "$temporal/inicio" commit -m 'docs: inicia el repositorio de práctica'

printf '\nCAPÍTULO 07 · Estado, índice, diff, commits y restore\n'
printf '\n## Comprobar las cifras\n\nEjecuta las pruebas desde la raíz.\n' >> README.md
printf 'archivo de trabajo temporal\n' > practica-temporal.txt
git status --short
git diff -- README.md
git add README.md
git diff --cached --stat
git commit -m 'docs: aclara la comprobación de ventas'
python3 - <<'PY'
from pathlib import Path
ruta = Path('data/ventas.csv')
lineas = ruta.read_text().splitlines()
ruta.write_text('\n'.join([lineas[0], *sorted(lineas[1:], key=lambda linea: (linea.split(',')[1], int(linea.split(',')[0])))])+'\n')
PY
git add data/ventas.csv
git commit -m 'chore: ordena las ventas por fecha'
python3 - <<'PY'
from pathlib import Path
ruta = Path('tests/test_resumen.py')
texto = ruta.read_text().replace('    def test_exportacion_json', '    def test_conteo_de_ventas(self):\n        self.assertEqual(resumir_ventas()["operaciones"], 12)\n\n    def test_exportacion_json')
ruta.write_text(texto)
PY
git add tests/test_resumen.py
git commit -m 'test: verifica el conteo de ventas'
git diff --stat "$partida"..HEAD
git diff "$partida"..HEAD -- README.md
printf '\nEdición de prueba.\n' >> README.md
git restore -- README.md
git diff --exit-code -- README.md
rm practica-temporal.txt
printf '\nCAPÍTULO 08 · Ramas y fusiones\n'
git switch -c feature/filtro-productos
printf '\nFiltro previsto: elegir un producto del resumen.\n' >> README.md
git add README.md
git commit -m 'docs: describe el filtro de productos'
printf 'Cambio sin guardar todavía.\n' > cambio-local.txt
git switch main
git status --short
git switch feature/filtro-productos
git status --short
rm cambio-local.txt
git switch main
git merge --no-ff feature/filtro-productos -m 'merge: integra la guía del filtro'
git switch -c fix/titulo-practica
printf 'Esta rama practica una corrección pequeña.\n' > correccion.md
git add correccion.md
git commit -m 'fix: aclara el alcance de la práctica'
git switch main
git merge --no-ff fix/titulo-practica -m 'merge: integra la aclaración de alcance'
git branch -d fix/titulo-practica
git log -8 --graph --oneline

printf '\nCAPÍTULO 09 · Sincronización con un remoto simulado\n'
git remote rename origin fuente-local
git remote add github https://github.com/alonso3107/AndinaMarket.git
git remote -v
git init -q --bare -b main "$temporal/remoto.git"
git remote add origin "$temporal/remoto.git"
git push -q -u origin main
git clone -q "$temporal/remoto.git" "$temporal/colaborador"
git -C "$temporal/colaborador" config user.name 'Cuenta de laboratorio'
git -C "$temporal/colaborador" config user.email 'laboratorio@example.invalid'
git -C "$temporal/colaborador" config commit.gpgsign false
printf '\nAviso de práctica desde el segundo clon.\n' >> "$temporal/colaborador/README.md"
git -C "$temporal/colaborador" add README.md
git -C "$temporal/colaborador" commit -m 'docs: añade un aviso de práctica'
git -C "$temporal/colaborador" push -q origin main
anterior=$(git rev-parse HEAD)
git fetch origin
test "$anterior" = "$(git rev-parse HEAD)"
git log --oneline HEAD..origin/main
git pull --ff-only
test "$(git rev-parse HEAD)" = "$(git rev-parse origin/main)"
git status --short --branch

printf '\nCAPÍTULO 10 · Conflicto, reversión y recuperación\n'
printf 'Aviso original\n' > mensajes.md
git add mensajes.md
git commit -m 'docs: incorpora un aviso de prueba'
git switch -c docs/aviso-datos
printf 'Datos: conservar el CSV original.\n' > mensajes.md
git add mensajes.md
git commit -m 'docs: añade un aviso sobre el CSV'
git switch main
printf 'Pruebas: ejecutar antes de publicar.\n' > mensajes.md
git add mensajes.md
git commit -m 'docs: añade un aviso sobre pruebas'
if git merge docs/aviso-datos; then
    exit 1
fi
git status --short
cat mensajes.md
printf 'Datos: conservar el CSV original.\nPruebas: ejecutar antes de publicar.\n' > mensajes.md
git add mensajes.md
git diff --cached --check
git commit -m 'merge: conserva ambos avisos'
cat mensajes.md
printf 'Cambio temporal\n' > demostracion.txt
git add demostracion.txt
git commit -m 'docs: añade una nota temporal'
git revert --no-edit HEAD
test ! -e demostracion.txt
printf '\nNota aún en revisión.\n' >> README.md
git stash push -m 'nota en revision'
git stash list -1
git stash pop
git restore -- README.md
git reflog -6 --format='%h %gs'
recuperado=$(git rev-parse 'HEAD@{1}')
git branch docs/recuperacion-de-prueba "$recuperado"
git show --no-patch --oneline docs/recuperacion-de-prueba
git log -6 --graph --oneline
git status --short --branch
PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v
