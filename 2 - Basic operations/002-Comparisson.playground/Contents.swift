import UIKit

// Comparisson

let a = 4
let b = 5

print(a == b)
print(a != b)
print(a >= b)
print(a <= b)

print((1,2,3) > (1,2,4) ? "La primera tupla es mayor" : "La segunda tupla es mayor")

var myMoney = 10000
let isPayDay: Bool = true

myMoney += (isPayDay ? 2000:0)

let defaultColor = "green"
//var userSelectedColor: String? = "red"
var userSelectedColor: String?

// If userSelectedColor is null, colorToUse will be defaultColor. If not, it will be userSelectedColor
var colorToUse = userSelectedColor ?? defaultColor
