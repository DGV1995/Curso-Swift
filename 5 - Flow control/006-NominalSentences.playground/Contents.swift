import UIKit

// Nominal sentences
/*
 labelName: while condition {
    // Something
 }
 */

let goal = 25
var board = [Int](repeating: 0, count: goal+1) // Arrays with 26 zeros

board[3] = +8
board[6] = +11
board[9] = +9
board[10] = +2

board[14] = -10
board[19] = -11
board[22] = -2
board[24] = -8

var square = 0 // Posición dentro del tablero
var dice = 0 // Tirada

gameLoop: while square  != goal {
    dice += 1 // 1, 2, 3, 4, 5, 6
    if dice == 7 {
        dice = 1
    }
    switch square + dice {
    case goal:
        print("Esto me lleva a la casilla final y gano")
        break gameLoop
    case let newSquare where newSquare > goal:
        print("El dado te lleva fuera del tablero, tira otra vez")
        continue gameLoop
    default:
        square += dice
        square += board[square]
    }
}
print("Game Over")
print("")

// Guard
func greet(person: [String:String]) {
    // Try to save the name in a variable. If not, return
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("Hope the wheater is good wherever you are")
        return
    }
    print("How is the whether in \(location)?")
}

greet(person:["name": "María"])
greet(person:["name": "Diego", "location": "Madrid"])

if #available(iOS 10, macOS 10.12, *) { // watchOS, tvOS
    // Usa APIs de iOS 10 y APIs de macOs 10.12 en OSX
} else {
    // Usa APIs anteriores
}
