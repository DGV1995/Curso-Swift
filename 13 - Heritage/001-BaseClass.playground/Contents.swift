import UIKit

// Base classes --> They do not inherit from another class
class Vehicle {
    var currentSpeed: Double = 0.0
    
    // Only reading variable (getter)
    var description: String {
        return "Travelling with \(currentSpeed) km/h"
    }
    
    // Constructor
    init(speed: Double) {
        self.currentSpeed = speed
    }
    
    func getDescription() -> String {
        return description
    }
    
    func makeNoise() {
        // Some code
    }
}

let someVehicle = Vehicle(speed: 120.0)
print(someVehicle.description)


// Subclasses
class Bycicle: Vehicle {
    var hasBasket = false
    
    override var description: String {
        return super.description + " with a bike"
    }
    
    // Constructor is inherited by default
    
    // Override makeNoise() function
    override func makeNoise() {
        print("Hey, this is a bycicle!")
    }
}

let bycicle = Bycicle(speed: 50)
bycicle.hasBasket = true
bycicle.makeNoise()
print(bycicle.getDescription())

class Car: Vehicle {
    var brand = ""
    var model = ""
    var gear = 5
    
    // Override description variable
    override var description: String {
        return super.description + " with the gear \(gear)"
    }
    
    // Override constructor
    init(brand: String, model: String, speed: Double) {
        self.brand = brand
        self.model = model
        // Superclass constructor
        super.init(speed: speed)
    }
    
    override func makeNoise() {
        print("Hey, this is a car!")
    }
}

let car = Car(brand: "Volvo", model: "S60 T5", speed: 110)
car.makeNoise()
print(car.getDescription())

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            // Cuando seteemos la variable currentSpeed, la marcha del coche se reajustará automáticamente
            gear = Int(currentSpeed/25.0) + 1
        }
    }
}

let automatic = AutomaticCar(brand: "Ferrari", model: "LaFerrari", speed: 0)
automatic.currentSpeed = 60
print("Automatic car: \(automatic.description)")
