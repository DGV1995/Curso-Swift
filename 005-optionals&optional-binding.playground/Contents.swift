import UIKit

// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // It is not an Int, but a Int? (optional)

print(convertedNumber)

var serverResponseCode: Int? = 404
//serverResponseCode = nil // Not known value

var answer: String?

if serverResponseCode != nil {
    print("The code of the server is not null, its actual value is \(serverResponseCode!)") // Retrieve the value of the variable serverResponseCode
}

if let actualNumber = Int(possibleNumber) { // actualNumber is an Int
    print("My actual number is \(actualNumber)")
} else {
    print("\(possibleNumber) does not contain and int number")
}

if let firstNumber = Int("4"), let secondNumber = Int("53"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

// Optional binding
let possibleString: String? = "This is an optional string"
let forcedString: String = possibleString! // Only if we know that the variable is not null!
print(forcedString)

let assumedString: String! = "String with value"
let implicitString: String = assumedString // I don't need '!' because I am sure that it exists

if assumedString != nil {
    print(assumedString!)
}

