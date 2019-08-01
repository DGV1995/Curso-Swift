import UIKit

// Stored properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

// Range 0,1,2,3
var rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

rangeOfFourItems.firstValue = 6 // Range 6,7,8,9

/*
let newRangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
newRangeOfFourItems.firstValue = 6 --> ERROR, newRangeOfFourItems must be var if we want to change its values
*/


// Lazy stored properties
class DataImporter {
    /*
     Clase que importaría datos desde un fichero (o fuente) externo.
     La clase se asume que no es una tarea fácil ni trivial y, por eso, tarda mucho tiempo en descargar e importar el fichero.
     */
    var fileName = "mydata.txt"
    // La funcionalidad para importar el fichero de nombre fileName iría a continuación
}

class DataManager {
    // Se encargará de trabajar con el fichero importado.
    lazy var importer = DataImporter()
    var data = [String]()
    // Resto de la funcionalidad del DataManager a continuación...
}

let manager = DataManager()
manager.data.append("Hace un buen día")
manager.data.append("Para leer un fichero que aún no sé cuál será")
// Como la variable importer, de tipo lazy, aún no ha sido usada en nuestro DataManager, ésta aún no ha sido siquiera creada. Así mejorar la eficiencia de la aplicación y no sobrecargamos la memoria.

print(manager.importer.fileName) // En este momento accedemos al DataImporter para consulytar sus variable y métodos. Entonces, ahora es cuando será inicializado en el DataManager.
