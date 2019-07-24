import UIKit

let pirates = ["José", "Antonio", "Pedro", "Juan", "Enrique", "Alfonso", "Diego", "Alejandro", "Carlos", "Ángel", "Ignacio", "Luis", "David", "Juanjo", "Ramón", "Toni", "Jeasson", "Sergio", "Damián", "Francisco", "Marcos", "Miguel", "Pablo", "Domingo", "Emilio", "Alberto", "Isaac", "John", "Héctor", "Manuel"]

let premio = [true, false, false, true, true, true, false, false, true, true, false, false, true, false, false, false, true, true, true, true, false, false, true, false, true, false, true, true, false, false]

var piratesAddRon: [String] = []

for (index, pirate) in pirates.enumerated() {
    if premio[index] == false {
        piratesAddRon.append(pirate)
    }
}

print(piratesAddRon)
