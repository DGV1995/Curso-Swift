import UIKit

// Unicode

let a = "a" // U+0061
let pollito = "🐥" // U+1F425

// Scape bar
let null = "\0"
let backslash = "\\"
let tab = "\t"
let intro = "\n"
let carro = "\r"
let comilla = "\""

print(backslash)
print(comilla)

print("\u{24}")
print("\u{2665}")
print("\u{1F496}")

let char = "é"
print("\u{00e9}") // é
print("\u{0065}" + "\u{0301}")

let newChar = "\u{65}\u{301}"
print(newChar)

let koreanExample = "\u{D55C}"
let decomposedExample = "\u{1112}\u{1161}\u{11AB}"

print("\u{0065}\u{0301}\u{20DD}")

let patriots: Character = "\u{1F1FA}\u{1F1F8}" // U + S = US (United States)
print(patriots)

print("\u{1F1EA}\u{1F1F8}") // E + S = ES (Spain)

let animals = "Dog 🐶, Cat 😸, Pig 🐷"
print("Pepito's farms has \(animals.count) characters")


