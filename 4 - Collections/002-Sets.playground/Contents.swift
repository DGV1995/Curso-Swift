import UIKit

// Sets
// Different values (the same type) without a defined order

// Set<Element>
var letters = Set<Character>()
print("The set has \(letters.count) elements")

letters.insert("a") // There is not 'append' method in a set
print("The set has \(letters.count) elements")

letters = []

var favouriteFood: Set<String> = ["Pizza", "Sandwich", "Salad"]

favouriteFood.isEmpty ? print("You do not have favourite food") : print("Your favourite food is delicious!")

favouriteFood.insert("Lasagna")

if let removedFood = favouriteFood.remove("Potatoes") {
    print("\(removedFood) has been removed")
} else {
    print("These food is not available in the set")
}

favouriteFood.contains("Potatoes") ? print("The set contains potatoes!") : print("There are not potatoes in the set :(")

print("")

// Loops
for food in favouriteFood.sorted() { // Alphabetical
    print(food)
}

print("")

// Operations with Sets
let evens: Set = [0,2,4,6,8]
let odds: Set = [1,3,5,7,9]
let primes: Set = [2,3,5,7]

print(evens.union(odds).sorted())
print(evens.intersection(odds).sorted()) // Inner join
print(odds.subtracting(primes).sorted())
print(evens.symmetricDifference(primes).sorted()) // Everything except the elements in common


let houseAnimals: Set = ["🐶", "😸"]
let farmAnimals: Set = ["🐮", "🐷", "🐔", "🐑", "🐶", "😸"]
let cityAnimals: Set = ["🐭", "🐦"]

houseAnimals.isSubset(of: farmAnimals) // Every element in houseAnimals is in farmAnimals too
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isStrictSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals) // There isn't elements in both sets at the same time
