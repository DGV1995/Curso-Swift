import UIKit

// Computed properties
struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rectangle {
    var origin = Point()
    var size = Size()
    
    // Computed propertie!
    // El centro y el origen del cuadrado están relacionadas entre sí. Cada vez que cambie de valor uno de ellos, el otro se recalculará
    var center: Point {
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            
            let theCenter = Point(x: centerX, y: centerY)
            return theCenter
        }
        // Si damos un nuevo centro al rectángulo, el origen será redefinido
        set(newCenter) {
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
}

var square = Rectangle(origin: Point(x: 0.0, y: 0.0),
                       size: Size(width: 10.0, height: 10.0))
print(square.center) // Getter

square.center = Point(x: 25.0, y: 25.0) // Setter
print("El origen del cuadrado está ahora en \(square.origin)")
print("El centro del cuadrado está ahora en \(square.center)")

struct AlternativeRectangle {
    var origin = Point()
    var size = Size()
    // Computed propertie
    var center: Point {
        get {
            return Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
        }
        set {
            // newValue es una palabra reservada para computed properties
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
}

struct Cuboid {
    var width = 0.0
    var height = 0.0
    var depth = 0.0
    // Computed propertie
    var volume: Double {
        return width * height * depth
    }
}

let myCuboid = Cuboid(width: 3.0, height: 4.0, depth: 5.0)
print("El volumen de mi paralelepípedo es de \(myCuboid.volume)")
