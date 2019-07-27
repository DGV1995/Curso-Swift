import UIKit

// Enums
enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToGo = CompassPoint.north
directionToGo = .west

enum Planet {
    case mercury, venus, earth, mars, jupyter, saturn, urane, neptune
}

var planetWithWater = Planet.earth
planetWithWater = .mars

var planet: Planet = .jupyter

switch directionToGo {
case .north:
    print("It's very cold in the north")
case .south:
    print("German people spends the summer in the south")
case .east:
    print("Be careful with the people in the east")
case .west:
    print("The west is unknown territory")
// default it's not necessary
}

switch planet {
case .earth:
    print("The Earth is a good planet to live")
default:
    print("There is not any life in this planet")
}

// Enums with associated values
enum Barcode {
    case upc(Int, Int, Int, Int) // Tuple with 4 ints
    case qrCode(String) // String
}

var productBarCode: Barcode = .upc(6, 71860, 01362, 4)
print(productBarCode)
productBarCode = .qrCode("AGDQKDNQ688NWKJD4567")
print(productBarCode)

switch productBarCode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem, manufacturer, product, check)")
case .qrCode(let productCode):
    print("QR Code: \(productCode)")
}
