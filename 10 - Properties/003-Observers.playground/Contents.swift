import UIKit

// Observers
class StepCounter {
    var totalSteps = 0 {
        // Se ejecuta antes de asignar un valor a la variable
        willSet(newTotalSteps) {
            print("Estoy a punto de cambiar totalSteps por \(newTotalSteps)")
        }
        // Se ejecuta justo después de asignar un nuevo valor a la variable
        didSet {
            // oldValue es palabra reservada
            if totalSteps > oldValue {
                print("Acabamos de sumar \(totalSteps - oldValue) pasos a la cuenta")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 1500
stepCounter.totalSteps = 3800
stepCounter.totalSteps = 3800
stepCounter.totalSteps = 4000
