import UIKit

// Closures 2

// Trailing closures
func functionThatTakesAClosure(closure: () -> Void) {
    // Code
}

functionThatTakesAClosure (closure: {
    // Closure's body
})

functionThatTakesAClosure() {
    // Trailing closure with method's body
}

let people = ["Juan Gabriel", "María", "Antonia", "Juan José", "Carmen", "Ricardo"]
print(people)

var reversedPeople = people.sorted() { $0 > $1 }
print(reversedPeople)

print("")

reversedPeople = people
print(reversedPeople)

reversedPeople = people.sorted { $0 > $1 }
print(reversedPeople)

print("")

let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro", 5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"]
let numbers = [18, 29, 325, 1008]

let stringNumbers = numbers.map { (number) -> String in
    var number = number
    var output = ""
    
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    
    return output
}

print(stringNumbers)


// Capture values
func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

let incrementByFive = makeIncrement(forIncrement: 5)

incrementByFive() // runningTotal = 5
incrementByFive() // runningTotal = 10
incrementByFive() // runningTotal = 15

let incrementByNine = makeIncrement(forIncrement: 9)

incrementByNine() // runningTotal = 9
incrementByNine() // runningTotal = 18

let incrementByFiveAgain = incrementByFive
incrementByFiveAgain() // runningTotal = 20
