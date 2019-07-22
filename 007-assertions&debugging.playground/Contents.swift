import UIKit

// Assertions and preconditions
let age = -8

//assert(age >= 0, "Age must be greater than 0")

/*
if age > 10 {
    print("Puedes montar en la montaña rusa")
} else if age > 0 {
    print("Eres muy pequeño para montar en la montaña rusa")
} else {
    // I force the error
    assertionFailure("Una persona no puede tener edad negativa")
}
 */

let index = -5
precondition(index >= 0, "Los índices deben ser >= 0")
// precondicitionFailure("Message")


