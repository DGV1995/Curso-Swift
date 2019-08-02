import UIKit

// Type properties
/*
 Utilizando la palabra reservada static, podemos acceder a las variables de una estructura,
 enumeración o clase sin la necesidad de crear una instancia de dicho objeto
 */
struct SomeStruct {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return storedTypeProperty.count
    }
}

enum SomeEnum {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return storedTypeProperty.count
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return storedTypeProperty.count
    }
    class var overridableComputedTypeProperty: Int {
        return 105
    }
}

print(SomeStruct.storedTypeProperty)
print(SomeStruct.computedTypeProperty)

SomeStruct.storedTypeProperty = "Another value"
print(SomeStruct.storedTypeProperty)
print(SomeStruct.computedTypeProperty)


struct AudioChannel {
    // Estos valores serán comunes para todas las instancias de AudioChannel
    static let thresholdLevel = 10 // Máximo valor de volumen permitido
    static var maxInputLevelForAllChannels = 0
    
    // Nivel de volumen actual
    var currentLevel: Int = 0 {
        // Justo después de asignar un valor a la variable currentLevel...
        didSet {
            // Si el valor asignado es mayor al máximo permitido, se le asigna el valor del máximo
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            
            // Si el valor actual es mayor al valor máximo registrado en todos los canales de audio anteriormente, este valor (maxInputLevelForAllChannels) se actualiza a dicho valor
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel() // Instancia de AudioChannel
var rightChannel = AudioChannel() // Instancia de AudioChannel
// Ambas instancias compartirán las variables estáticas thresholdLevel y maxInputLevelForAllChannels

leftChannel.currentLevel = 7

print(leftChannel.currentLevel)
print("Nivel máximo registrado: \(AudioChannel.maxInputLevelForAllChannels)")

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
print("Nivel máximo registrado: \(AudioChannel.maxInputLevelForAllChannels)")

