import UIKit

// Integers
// UInt8: unsigned integer with 8 bits
// Int32: integer with 32 bits
let minValue = UInt8.min // Minimum value of a UInt8 = 0
let maxValue = UInt8.max // Maximum value of a UInt8 = 255

var myInteger: Int = 6
var myPositiveInteger: UInt = 32

print("Valores de 32 bits: (\(Int32.min), \(Int32.max))")
print("Valores de 62 bits: (\(Int64.min), \(Int64.max))")


// Floats
let pi = 3.14159265 // Double
let minT = -273.15 // It's a Double too
let meaningOfLife = 42 // Integer
let anotherPi = 3 + 0.14159265 // Double


// Literales numéricos
// Decimal
let decimalNumber = 17

// Binary
let binaryNumber = 0b10001 // 16*1 + 8*0 + 4*0 + 2*0 + 1*1 = 17

// Octal
let octalNumber = 0o21 // 8*2 + 1*1 = 17

// Hexadecimal 0-9ABCDEF
let hexadecimalNumber = 0x11 // 16*1 + 1*1 = 17

// Exponential number
let number = 1.25e2 // 1.25 * 10^2 = 125
let number2 = 1.25e-2 // 1.25/100 = 0.0125
let number3 = 0xFp2 // 15 * 2^2 = 60
let number4 = 0xFp-2 // 15 * 2^-2 = 3.75

// 12.1875
let n1 = 12.1875
let n2 = 1.21875e1
let n3 = 121875e-4
let n4 = 0xC.3p0

let paddedDouble = 0000123.456
let oneMillion = 1_000_000
let overOneMillion = 1_000_000.000_000_1

// Usual mistakes
// Int8: -128 to 127
// UInt8: 0 to 255

//let tooBigUint: UInt8 = Int8.max + 1
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
//let twoThousandAndOne = twoThousand + one
let twoThousandAndOne = twoThousand + UInt16(one) // Casting UInt8 --> UInt16

let three = Double(3) // Casting Int --> Double
let piFloat = Float(3.14159625) // Casting Double --> Float
let intPi = Int(3.14159625) // Casring Float --> Integer
let doublePi = three + 0.14159265


typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max
var mySample: [AudioSample] = [0,6,32,76,87]



