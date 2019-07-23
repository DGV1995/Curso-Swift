import UIKit

// Modifications
var welcome = "Hello world!"
welcome[welcome.startIndex]
welcome[welcome.index(before: welcome.endIndex)]

let index = welcome.index(welcome.startIndex, offsetBy: 7)
welcome[index]

for index in welcome.indices {
    print("\(welcome[index])", terminator: "")
}

print("\n================")

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: "!!!!!", at: welcome.endIndex)
welcome.insert(contentsOf: "😁", at: welcome.index(welcome.endIndex, offsetBy: -7))

welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)

let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)


// Substrings
// welcome = Hello world
let blankIndex = welcome.index(of: " ") ?? welcome.endIndex
let firstPart = welcome[..<blankIndex] // Substring
let secondPart = welcome[blankIndex...] // String

let newString = String(firstPart) // String


// Comparissons between String
// Equality between characters
"Hola mundo" == "Hello world" ? print("They are equal") : print("They are not equal")
"Hola mundo" != "Hello world"

let firstCoffee = "café"
let secondCoffee = "caf\u{65}\u{301}"
firstCoffee == secondCoffee ? "The coffees are equal" : "The coffees are not equal"

let latinA = "\u{41}"
let cyrillicA = "\u{0410}"
latinA == cyrillicA


// Prefixes and suffixes
let romeoAndJuliet = [
    "Act 1 Scene 1: verona, a public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A streets outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 3 Scene 6: Friar Lawrence's cell"
]

var numberOfScenes = 0
var numberOfScenesInMansion = 0

for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        numberOfScenes += 1
    }
    
    if scene.hasSuffix("mansion") {
        numberOfScenesInMansion += 1
    }
}

print("There are \(numberOfScenes) scenes in the first act")
print("There are \(numberOfScenesInMansion) scenes in the Capulet's mansion")
