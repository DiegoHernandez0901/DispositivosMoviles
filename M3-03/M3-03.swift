import Foundation

// inicio bloque: Autor Profesor Christian
print("Introduce la expresion")

let expresion = readLine()!

var numeros = [Double]()
var operaciones = [String]()

let operacionesAceptadas = ["-", "+", "*", "/"]

var temporal = ""

for caracter in expresion {
    if operacionesAceptadas.contains(String(caracter)){
        operaciones.append(String(caracter))
        numeros.append(Double(temporal)!)
        temporal = ""
    } else {
        temporal += String(caracter)
    }
}

if !temporal.isEmpty {
    numeros.append(Double(temporal)!)
}

// Fin bloque: Autor Profesor Cristian Cardoso

while !operaciones.isEmpty {
    let operacion = operaciones.removeLast()
    let segundoNumero = numeros.removeLast()
    let primerNumero = numeros.removeLast()
    var resultado: Double
    
    switch operacion {
    case "+":
        resultado  = primerNumero + segundoNumero
        break
    case "-":
        resultado = primerNumero - segundoNumero
        break
    case "*":
        resultado = primerNumero * segundoNumero
        break
    case "/":
        resultado = primerNumero / segundoNumero
        break
    default:
        fatalError("Error: Operación inválida: \(operacion)")
        break
    }
    
    numeros.append(resultado)
}

print("= \(numeros[0])")

