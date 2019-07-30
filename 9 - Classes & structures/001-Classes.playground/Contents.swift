import UIKit

// Classes & structures

/*
 - properties
 - methods
 - constructors
 - expansion
 - protocols
*/

// Class
/*
 - herency
 - type casting
 - desinitializer
 - reference counting
*/
class SomeClass {
    // class definition here
}

// Structure
struct SomeStructure {
    // structure definition here
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var name: String?
    var resolution = Resolution()
    var frameRate = 0.0
    var interlaced = false
}

var someResolution = Resolution()
someResolution.width = 1920
someResolution.height = 1080

let someVideoMode = VideoMode()
someVideoMode.name = "My video mode"
someVideoMode.resolution = someResolution

print("Resolution: \(someVideoMode.resolution.width)x\(someVideoMode.resolution.height)")

// Default initializer in structures
let vga = Resolution(width: 640, height: 480)
print("\(vga.width)x\(vga.height)")


let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
cinema.width = 2048

print("Cinema es \(cinema.width) y hd es \(hd.width)")

enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection
currentDirection = .east

oldDirection == .north ? print("The direction is the same") : print("The direct has changed!")

let tenEighty = VideoMode()
// Value copy
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

// Reference copy
let newTenEighty = tenEighty // They are the same object! They same memory direction
newTenEighty.frameRate // 25.0
newTenEighty.frameRate = 30.0

print("El frame rate del nuevo ten eighty vale \(newTenEighty.frameRate)")
print("El frame rate del ten eighty original vale \(tenEighty.frameRate)")

// Triple equal (same instance)
if tenEighty === newTenEighty {
    print("Las dos variables se refieren a la misma instancia")
}
