import UIKit

// Functions
/*
 func functionName(param: paramType) --> returnType {
    // Something
    return (returnType) value
 }
 */

func sayHello(person: String) -> String {
    return "Hello \(person)!"
}

func sayHelloAgain(person: String) -> String {
    return "Hello again, \(person)!"
}

print(sayHello(person: "Diego"))

let greeting = sayHello(person: "Lucas")
print(greeting)

// No params
func helloWorld() -> String {
    return "Hello world"
}
print(helloWorld())

// Multiple params
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return sayHelloAgain(person: person)
    } else {
        return sayHello(person: person)
    }
}

print(greet(person: "Diego", alreadyGreeted: false))
print(greet(person: "Rodolfo", alreadyGreeted: true))

// Return values
// Without return value
func hello(person: String) {
    print("Hello \(person)!")
}
hello(person: "Jose")

// Multiple return values
func minMax(values: [Int]) -> (min: Int, max: Int) {
    //return(values.min()!, values.max()!)
    var minValue = values[0]
    var maxValue = values[0]
    
    for value in values {
        if value < minValue {
            minValue = value
        }
        if value > maxValue {
            maxValue = value
        }
    }
    return (minValue, maxValue)
} 

//let (minValue, maxValue) = minMax(values: [1,2,3,4,5])
let limits = minMax(values: [1,-2,-8,3,-11,16])
print("Min value is \(limits.min)")
print("Max value is \(limits.max)")

// Optional return values
// let newLimits = minMax(values: []) --> fatal error: Index out of range
func minMax2(values: [Int]) -> (min: Int, max: Int)? {
    if values.isEmpty {
        return nil
    }

    var minValue = values[0]
    var maxValue = values[0]
    
    for value in values {
        if value < minValue {
            minValue = value
        }
        if value > maxValue {
            maxValue = value
        }
    }
    return (minValue, maxValue)
}

if let newLimits = minMax2(values: [1,-2,-8,3,-11,16]) {
    print("Min value is \(newLimits.min)")
    print("Max value is \(newLimits.max)")
} else {
    print("Not possible to get minMax()")
}
