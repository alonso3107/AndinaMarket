const tabla = document.getElementById("resumen");
const estado = document.getElementById("estado");
const moneda = new Intl.NumberFormat("es-PE", { style: "currency", currency: "PEN" });

async function mostrarResumen() {
  try {
    const respuesta = await fetch("data/resumen.json");
    if (!respuesta.ok) {
      throw new Error("El archivo de resumen no está disponible.");
    }
    const resumen = await respuesta.json();
    for (const [sede, total] of Object.entries(resumen.ventas_por_sede)) {
      const fila = tabla.tBodies[0].insertRow();
      const encabezado = document.createElement("th");
      encabezado.scope = "row";
      encabezado.textContent = sede;
      fila.append(encabezado);
      fila.insertCell().textContent = moneda.format(total);
    }
    document.getElementById("total").textContent = moneda.format(resumen.total);
    estado.textContent = `${resumen.operaciones} operaciones registradas.`;
    tabla.hidden = false;
  } catch {
    estado.textContent = "No se pudo cargar el resumen. Genera el JSON y vuelve a abrir la página.";
  }
}

mostrarResumen();
