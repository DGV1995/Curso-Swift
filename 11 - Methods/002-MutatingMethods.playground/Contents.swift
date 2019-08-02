import UIKit

// Mutating methods
struct Point {
    var x = 0.0
    var y = 0.0
    
    // Al ser propiedades de una estructura, es necesario añadir la palabra reservada "mutating" para poder modificar su valor
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        // Modifica variable a variable
        x += deltaX
        y += deltaY
    }
}

// Para llamar a métodos mutating, la instancia debe ser una variable, nunca una constante
var somePoint = Point(x: 1.0, y: 2.0)

somePoint.moveBy(x: 5.0, y: 2.0)
print("El punto se encuentra en (\(somePoint.x),\(somePoint.y))")


struct Point2 {
    var x = 0.0
    var y = 0.0
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        // Construye una nueva estructura y la asigna a la instancia original
        self = Point2(x: x + deltaX, y: y + deltaY)
    }
}

var newPoint = Point2(x: 2.0, y: 5.0)
newPoint.moveBy(x: 1.0, y: 3.0)
print("El punto se encuentra en (\(newPoint.x),\(newPoint.y))")


enum CharacterState {
    case mage, warrior, archer
    
    mutating func nextCharacter() {
        switch self {
        case .mage:
            self = .warrior
        case .warrior:
            self = .archer
        case .archer:
            self = .mage
        }
    }
}

var myCharacter: CharacterState = .mage
print(myCharacter)
myCharacter.nextCharacter()
print(myCharacter)
