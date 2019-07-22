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
