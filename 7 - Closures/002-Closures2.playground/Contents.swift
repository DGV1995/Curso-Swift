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
