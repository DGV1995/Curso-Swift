import UIKit

// Control Transfer

// Return -> functions


// Throw -> Errors


// Continue
let input = "el perro de san roque no tiene rabo"
var output = ""
let charactersToRemove: [Character] = ["a","e","i","o","u"," "]

for character in input {
    if charactersToRemove.contains(character) {
         continue
    } else {
        output.append(character)
    }
}
print(output)

// Break
var int = 1

while int < 100 {
    int += 1
    if int >= 10 {
        break
    }
}
print(int)

// Fallthrough
let integerToDescribe = 7
var description = "The number \(integerToDescribe) is "

switch integerToDescribe {
case 2,3,5,7,11,13,17,19,23:
    description += "prime, and also "
    fallthrough // It will continue to the next case
default:
    description += "integer"
}
print(description)
