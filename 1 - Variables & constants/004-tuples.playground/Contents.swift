import UIKit

// Tuples
let httpError: (Int, String) = (404, "Error, not found")
let coordinates: (Int, Int, Int)
let password: (String, Bool)
print(httpError)

let (statusCode, statusMessage) = httpError
print("Status code: \(statusCode), Status message: \(statusMessage)")

let (justStatusCode, _) = httpError
print("Status code: \(justStatusCode)")

print("The first part is: \(httpError.0), and the second one is: \(httpError.1)")

let http200Status = (statusCode: 200, description: "OK")
print(http200Status.statusCode)
print(http200Status.description)






