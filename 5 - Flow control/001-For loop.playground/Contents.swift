import UIKit

// For loop
let dishes = ["Pizza", "Hamburger", "Salad", "Chips"]

for dish in dishes {
    print("Todat, the menu is: \(dish.lowercased())")
}

print("")

let animals = ["spider": 8, "dog": 4, "ant": 6, "kangaroo": 2]

for (animal, legs) in animals {
    print("\(animal)s have \(legs) legs")
}

print("")

for i in 1...10 {
    i%2 == 0 ? print("\(i) is an even number") : print("\(i) is an odd number")
}

let base = 2
let power = 10
var solution = 1

for _ in 1...power {
    solution *= base
}

print("\(base) elevado a \(power) es \(solution)")

let seconds = 60
for i in 1..<seconds {
    print("Tick: \(i)")
}

print("")

// Stride method
for tick in stride(from: 0, to: 60, by: 5) { // value 60 is not included in the interval
    print("Tick: \(tick)")
}
print("")
for tick in stride(from: 0, through: 60, by: 5) { // value 60 is included in the interval
    print("Tick: \(tick)")
}
