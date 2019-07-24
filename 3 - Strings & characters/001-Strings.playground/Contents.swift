import UIKit

// Strings
let myString = "Hello world"

let sentence = """

    En un lugar de La Mancha,
    de cuyo nombre no quiero acordarme...

    \(myString)

    """

print(sentence)

var emptyString = ""
var anotherEmptyString = String()

emptyString.isEmpty ? "Empty" : "Full"

var title = "Harry Potter"
title += " y la piedra filosofal"
print(title)


// Characters
for c in "Perrito 🐶" {
    print(c)
}

let dogArray: [Character] = ["P","e","r","r","o","🐶"]
let dogString = String(dogArray)
