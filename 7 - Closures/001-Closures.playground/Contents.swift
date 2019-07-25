import UIKit

// Closures --> Like a lambda function?
/*
 
 - Funciones globales que tienen un nombre y no capturan ningún valor.
 - Funciones anidadas con un nombre que pueden capturar valores de la función englobante.
 - Funciones sin nombre escrita en un contexto dentro de otra función que puede capturar valores del contexto que la rodea.
 
 Casos de uso:
 - Inferir un parámetro y devolver un valor de retorno en un contexto.
 - Hacer un retorno implícito de una expresión simple.
 - Nomenclatura simplicada (shorthand).
 - Sintaxis de closure para funciones específicas.
 
 */

let people = ["Juan Gabriel", "María", "Antonia", "Juan José", "Carmen", "Ricardo"]
print(people)

func sortBackward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedPeople = people.sorted(by: sortBackward)
print(reversedPeople)

print("")

/* Sintaxis de Closures
 { (parámetros) -> valor de retorno in
    // Código del closure
 }
 
 */

reversedPeople = people
print(reversedPeople)
reversedPeople = people.sorted(by: { (s1:String, s2:String) -> Bool in return s1 > s2 })
print(reversedPeople)

print("")

// Más simple
reversedPeople = people
print(reversedPeople)

reversedPeople = people.sorted(by: { s1, s2 in return s1 > s2 })
print(reversedPeople)

print("")

// Más simple aún
reversedPeople = people
print(reversedPeople)

reversedPeople = people.sorted(by: { s1, s2 in s1 > s2 })
print(reversedPeople)

print("")

reversedPeople = people
print(reversedPeople)

reversedPeople = people.sorted(by: { $0 > $1 })
print(reversedPeople)

print("")

reversedPeople = people
print(reversedPeople)

reversedPeople = people.sorted(by: >)
print(reversedPeople)
