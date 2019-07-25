import UIKit

// Functions 2
func myFunction(firstParameter: Int, secondParameter: Int) {
    //
}

func myNewFunction(label param: Int) {
    //
}

myFunction(firstParameter: 2, secondParameter: 5)
myNewFunction(label: 3)

func sayHello(person: String, from hometown: String) -> String {
    return "Hello \(person), \(hometown) is so beautiful!"
}

print(sayHello(person: "Diego", from: "Madrid"))

func myNewestFunction(_ firstParameter: Int, secondParameter: Int) {
    //
}
myNewestFunction(1, secondParameter: 2)


func anotherFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 5) {
    print(parameterWithDefault)
}

anotherFunction(parameterWithoutDefault: 2, parameterWithDefault: 4)
anotherFunction(parameterWithoutDefault: 2)

// Variadic parameter
func arithmeticMean(_ numbers: Double...) -> Double { // I can use as many params as I want (...)
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total/Double(numbers.count)
}

arithmeticMean(1,2,3,4,5)
arithmeticMean(1,2,3,4,5,6,7,8,9)

// In-out params (they are modificable inside the function)
func swap(_ a: inout Int, _ b: inout Int) -> (x: Int, y: Int) {
    let aux = a
    a = b
    b = aux
    return (a, b)
}

var a = 2
var b = 3
print(a,b)

// Step by reference (memory position)
(a, b) = swap(&a, &b)
print(a,b)

