import UIKit

// Switch - case
let a = 2

switch a {
case 1:
    print("The value is 1")
case 2:
    print("The value is 2")
case 3, 4:
    print("The value is 3 or 4")
default:
    print("I don't recognize the value!")
}

let possibleVowel = "p"

switch possibleVowel {
case "a", "e", "i", "o", "u",
     "A", "E", "I", "O", "U":
    print("It's a vowel")
default:
    print("It's not a vowel")
}

// Intervals
let moons = 62
let planet = "Saturno"
let readableCount: String

switch moons {
case 0:
    readableCount = "ninguna"
case 1..<5:
    readableCount = "algunas"
case 5..<12:
    readableCount = "unas cuantas"
case 12..<100:
    readableCount = "varias docenas"
case 100..<1000:
    readableCount = "varios centernares"
default:
    readableCount = "muchísimas"
}

print("Hay \(readableCount) de lunas en \(planet)")

// Tuples
let point = (2,-2)

switch point {
case (0,0):
    print("\(point) es el origen de coordenadas")
case (_,0):
    print("\(point) se halla sobre el eje X")
case (0,_):
    print("\(point) se halla sobre el eje Y")
case (-2...2, -2...2):
    print("\(point) se halla dentro de la caja")
default:
    print("\(point) está fuera de la caja")
}

switch point {
case (let x, 0):
    print("Se halla sobre el eje de las X con la coordenada \(x)")
case (0, let y):
    print("Se halla sobre el eje de las Y con la coordenada \(y)")
case let(x, y):
    print("Este punto está sobre el eje \(x), \(y)")
}

switch point {
case let(x,y) where x == y:
    print("El punto \(x), \(y) está sobre la recta x = y")
case let(x,y) where x == -y:
    print("El punto \(x), \(y) está sobre la recta x = -y")
case let(x,y):
    print("El punto \(x), \(y) es un punto cualquiera")
}

let character: Character = "e"
switch character {
case "a", "e", "i", "o", "u":
    print("\(character) es una vocal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z":
    print("\(character) es una consonante")
default:
    print("\(character) no es ni vocal ni consonante")
}

let anotherPoint = (7,0)
switch anotherPoint {
case (let distance, 0), (0, let distance):
    print("Sobre el eje, y a distance \(distance) del origen de coordenadas")
default:
    print("No está sobre el eje")
}
