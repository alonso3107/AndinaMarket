const tabla = document.getElementById("resumen");
const estado = document.getElementById("estado");
const grupo = tabla.dataset.grupo;
const unidades = new Intl.NumberFormat("es-PE");
const moneda = new Intl.NumberFormat("es-PE", { style: "currency", currency: "PEN" });

async function mostrarResumen() {
  try {
    const respuesta = await fetch("data/resumen.json");
    if (!respuesta.ok) {
      throw new Error("El archivo de resumen no está disponible.");
    }
    const resumen = await respuesta.json();
    const esVentasPorSede = grupo === "ventas_por_sede";
    const formato = esVentasPorSede ? moneda : unidades;
    for (const [etiqueta, valor] of Object.entries(resumen[grupo])) {
      const fila = tabla.tBodies[0].insertRow();
      const encabezado = document.createElement("th");
      encabezado.scope = "row";
      encabezado.textContent = etiqueta;
      fila.append(encabezado);
      fila.insertCell().textContent = formato.format(valor);
    }
    if (esVentasPorSede) {
      document.getElementById("total").textContent = moneda.format(resumen.total);
    }
    estado.textContent = `${resumen.operaciones} operaciones registradas.`;
    tabla.hidden = false;
  } catch {
    estado.textContent = "No se pudo cargar el resumen. Genera el JSON y vuelve a abrir la página.";
  }
}

mostrarResumen();
