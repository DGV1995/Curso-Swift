import UIKit

// Functions 3
// Functions as parameters
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func diff(_ a: Double, _ b: Double) -> Double {
    return (a-b)
}

func mul(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func div(_ a: Double, _ b: Double) -> Double {
    return a/b
}

func doSomething(_ a: Double, _ b: Double, function: (Double, Double) -> Double) {
    print(function(a, b))
}

let a: Double = 10, b: Double = 15

doSomething(a, b, function: add)
doSomething(a, b, function: diff)
doSomething(a, b, function: mul)
doSomething(a, b, function: div)

doSomething(a,b, function: {(x, y) -> Double in x*x + y*y})

// Functions as return values
func stepForward(_ int: Int) -> Int {
    return int + 1
}

func stepBackward(_ int: Int) -> Int {
    return int - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
var moveToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveToZero(currentValue)
}

print("")

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func newStepForward(input: Int) -> Int {return input + 1}
    func newStepbackward(input: Int) -> Int {return input - 1}
    return backward ? newStepbackward : newStepForward
}

currentValue = -5
moveToZero = chooseStepFunction2(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveToZero(currentValue)
}
