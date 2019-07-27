import UIKit

// Enums 2

// Enums with raw values (they must be unique)
enum ASCIIControlCharacters: Character {
    case tab        = "\t"
    case intro      = "\n"
    case carriache  = "\r"
    case point      = "."
}

enum Planet: Int {
    // 1, 2, 3, 4, 5, 6, 7, 8
    case mercury = 1, venus, earth, mars, jupyter, saturn, urane, neptune
}

Planet.mercury.rawValue

enum CompassPoint: String {
    case north, south, east, west
}

let earth = Planet.earth.rawValue // 3
let sunsetDirection = CompassPoint.west.rawValue // "west"

print(earth)
print(sunsetDirection)

let possiblePlanet = Planet(rawValue: 6) // Optional Planet (?)

if let anotherPossiblePlanet = Planet(rawValue: 15) {
    switch anotherPossiblePlanet {
    case .earth:
        print("The Earth is a good planet to live")
    default:
        print("There is not any life in \(anotherPossiblePlanet)")
    }
} else {
    print("I don't know which is the planet you're talking about")
}


// Recursive enums
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// (2 + 5) * 3 = 21
let two: ArithmeticExpression = .number(2)
let five: ArithmeticExpression = .number(5)
let three:ArithmeticExpression = .number(3)

let sum: ArithmeticExpression = .addition(two, five)
let product: ArithmeticExpression = .multiplication(sum, three)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
