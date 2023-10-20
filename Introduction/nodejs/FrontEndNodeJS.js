const fs = require('fs');

function convertirCaF(gradosCentigrados) {
    const gradosFahrenheit = (gradosCentigrados * 9/5) + 32;
    return gradosFahrenheit;
}

function convertirKmsMillas(kilometros) {
    const millas = kilometros * 0.621371;
    return millas;
}

function convertirKgLibras(kilogramos) {
    const libras = kilogramos * 2.20462;
    return libras;
}

function convertirPulgadasCm(pulgadas) {
    const centimetros = pulgadas * 2.54;
    return centimetros;
}

function convertirPiesPulgadas(pies) {
    const pulgadas = pies * 12;
    return pulgadas;
}

function pruebaConversiones() {
    const pruebas = [
        { funcion: convertirCaF, origen: "Grados Centigrados origen", destino: "Grados Farenheit convertidos", valor: 50 },
        { funcion: convertirKmsMillas, origen: "Kilometros origen", destino: "Millas convertidas", valor: 150 },
        { funcion: convertirKgLibras, origen: "Kilogramos origen", destino: "Libras convertidas", valor: 75 },
        { funcion: convertirPulgadasCm, origen: "Pulgadas origen", destino: "Centimetros convertidos", valor: 20 },
        { funcion: convertirPiesPulgadas, origen: "Pies origen", destino: "Pulgadas convertidas", valor: 5 }
    ];

    const archivo = fs.createWriteStream("pruebaconversiones.txt");

    pruebas.forEach((prueba) => {
        const resultado = prueba.funcion(prueba.valor);
        archivo.write(`Prueba función: ${prueba.funcion.name}\n`);
        archivo.write(`${prueba.origen}: ${prueba.valor}\n`);
        archivo.write(`${prueba.destino}: ${resultado}\n`);
        archivo.write("-------\n");
    });

    archivo.end();
}

pruebaConversiones();
