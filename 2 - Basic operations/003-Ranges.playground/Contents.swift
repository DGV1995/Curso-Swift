import UIKit

// Ranges

// Closed ranges
for i in 1...10 {
    print("5 x \(i) = \(5*i)")
}

print("")

// Semi-opened ranges (a..<b) --> a <= x < b
for i in 1..<10 {
    print(i)
}

print("")

// Unilateral range
let names = ["Jose", "Juan", "Pepe", "María", "Ana", "Alicia"]

for name in names[2...] {
    print(name)
}
print("")
for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(7) ? "Contiene el número 7" : "No contiene el número 7"
range.contains(3) ? "Contiene el número 3" : "No contiene el número 3"
