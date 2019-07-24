import UIKit

// Arrays
// Array<Element> --> [Element]
var someInts: [Int] = []
var moreInts = [Int]()
print("El array contiene \(someInts.count) elementos")

someInts.append(3)
print("El array contiene \(someInts.count) elementos")

var threeDoubles = Array(repeating: 0.0, count: 3)
var fourDoubles = Array(repeating: 3.1415, count: 4)

var sevenDoubles = threeDoubles + fourDoubles

var shoppingList: [String] = ["Pimiento", "Cebolla", "Pollo", "Tortitas", "Guacamole"]
print("The shopping list has \(shoppingList.count) elements")

shoppingList.isEmpty ? print("We have to go to the market") : print("There is nothing we need to buy")

print("")

// Add elements
shoppingList.append("Beer")
shoppingList += ["Lima"]
shoppingList += ["Nachos", "Queso"]
print(shoppingList)

let firstItem = shoppingList[0]
shoppingList[0] = "Tres pimientos"
print(shoppingList)

shoppingList[4...6] = ["Lechuga"]
print(shoppingList)

shoppingList.insert("Mostaza", at: 3)
print(shoppingList)

let boughtItem = shoppingList.remove(at: 2)
print(shoppingList)

let lastObject = shoppingList.removeLast()
print(shoppingList)

// Iterations
for item in shoppingList {
    print(item)
}

print("")

for (index, item) in shoppingList.enumerated() {
    print("\(index+1) - \(item)")
}
