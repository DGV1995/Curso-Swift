import UIKit

// Subscripts
class SomeClass {
    subscript(index: Int) -> Int {
        get {
           // Reading operation
            return index
        }
        set(newValue) {
            // Writing operation
        }
    }
    
    subscript(index1: Int, index2: Int) -> Int {
        return 5
    }
}

let someInstance = SomeClass()
print(someInstance[10])


struct TimesTable {
    let multiplayer: Int
    
    subscript(index: Int) -> Int {
        return multiplayer * index // TimesTable[i] = multiplayer * i
    }
}

// Tablas de multiplicar del 1 al 10
for i in 1...10 {
    let timesTable = TimesTable(multiplayer: i)
    for j in 1...10 {
        print("\(i) x \(j) = \(timesTable[j])")
    }
    print("")
}

let collection = [4,6,8,19,43]
collection[2]

let numberOfLegs = ["pulpo": 8, "perro": 4, "pájaro": 2, "araña": 8]
numberOfLegs["perro"]
numberOfLegs["araña"]
