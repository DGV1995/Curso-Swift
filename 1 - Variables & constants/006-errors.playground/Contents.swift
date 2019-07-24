import UIKit

// Errors
func canThrowError() throws {
    
}

do {
    try canThrowError()
    // If there is not any error, continue right here
} catch {
    // If there is an error, continue here
}

func makeSandwich() throws {
    
}

func eatSandwich() {
    
}

func washTheDishes() {
    
}

func buyIngredients() {
    
}

do {
    try makeSandwich()
    eatSandwich()
} catch {
    // There are not clean dishes
    washTheDishes()
} catch {
    // There are not ingredients for the sandwich
    buyIngredients()
}
