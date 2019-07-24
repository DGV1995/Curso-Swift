import UIKit

// Al capitán le gusta mucho escribir en una botella todo lo que hace para finalmente lanzarlo al mar. así en un futuro podrá ser recordado. A menudo, los piratas tienen batallas con otros barcos y en ocasiones algunos de ellos mueren en el combate. Esto quiere decir que cada vez que hay un combate tiene que reclutar tantos piratas como personas hayan muerto.

// Como se ha dicho, al capitán le gusta poner todo lo que hace en un mensaje paa lanzarlo al mar, pero también es un poco vago. Como sabe de informática, hace un programa en el que guarda en un array los nombres de los nuevos piratas y de los piratas fallecidos para escribir los nuevos mensajes:
// - Los (p: número de piratas fallecidos) piratas que han fallecido en combate son: (nombre pirata 1), ..., (nombre pirata p)
// - Los (np: número de nuevos piratas) nuevos miembros de esta tripulación son: (nombre pirata 1), ..., (nombre pirata np)

var deadPirates: [String] = ["Pepe", "Juan", "Jose"]
var newPirates: [String] = ["Rudolf", "Benito", "Carlos"]

print("Los \(deadPirates.count) piratas que han fallecido en combate son:")
for (_, pirate) in deadPirates.enumerated() {
    print("- \(pirate)")
}

print("")

print("Los \(newPirates.count) nuevos miembros de esta tripulación son:")
for (_, pirate) in newPirates.enumerated() {
    print(" - \(pirate)")
}

print("")

// Catch the current date
let fecha = Date()
let format = DateFormatter()
// Tuesday, July 23, 2019
format.dateStyle = .full

print(format.string(from: fecha))


