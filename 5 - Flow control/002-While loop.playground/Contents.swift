import UIKit

// While loop
var i = 0

while i < 10 {
    print(i)
    i += 1
}

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

while square < goal {
    // Lanzar el dado
    dice += 1
    
    if dice == 7 {
        dice = 1
    }
    
    square += dice
    
    if square < board.count {
        square += board[square]
    }
}

print("Game Over")

// Repeat-while loop (like do-while)
var j = 0

repeat {
    print(j)
    j += 1
} while j < 10

