import UIKit

// Closures 3

// Escaping closures
var completionHandlers: [() -> Void] = []

func someFunctionWithScapingClosures(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}


func someFunctionWithNonEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    
    var x = 10
    
    func doSomething() {
        someFunctionWithScapingClosures { self.x = 100 }
        someFunctionWithNonEscapingClosure { x = 200 }
    }
    
}

let theElement = SomeClass()
theElement.doSomething()

print(theElement.x)

completionHandlers.first?()


// Autoclosures
var customers = ["Cristina", "Alejandro", "Víctor", "Eva", "Daniela"]
print(customers.count)

//let customerProvider = customers.remove(at: 0) // Cristina es atendida

let customerProvider = { customers.remove(at: 0) }

print(customers.count)

print("El siguiente de la lista es: \(customerProvider())")
print(customers.count)

func serve(customer customerProvider: () -> String) {
    print("El siguiente de la lista es: \(customerProvider())")
}

serve(customer: { customers.remove(at: 0) })

func serveCustomer(customer customerProvider: @autoclosure () -> String) {
    print("El siguiente de la lista es: \(customerProvider())")
}

serveCustomer(customer: customers.remove(at: 0))



var customersProviders: [() -> String] = []

func collectCustomersProviders(_ customerProvider: @autoclosure  @escaping () -> String) {
    customersProviders.append(customerProvider)
}

collectCustomersProviders(customers.remove(at: 0))
collectCustomersProviders(customers.remove(at: 0))


print("Hemos preparado a \(customersProviders.count)")

for c in customersProviders {
    print("Ahora estamos atendiendo a \(c())")
}
