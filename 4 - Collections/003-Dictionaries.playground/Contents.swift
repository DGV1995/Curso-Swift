import UIKit

// Dictionaries
// Dictionary<Key:Value>
var integerNames = [Int:String]()
integerNames[32] = "thirty two" // 32: 'Thirty two'
print(integerNames)

integerNames = [:]

var airports: [String:String] = ["PMI": "Palma de Mallorca", "BCN": "Barcelona", "MAD": "Madrid"]
print(airports)

var pass = ["English": true, "Maths": false, "Science": true]

print("The number of airports is \(airports.count)")

airports.isEmpty ? print("There aren't airports ready") : print("The airports are ready!")

airports["LHR"] = "London"
print(airports)

airports["LHR"] = "London Heathrow"
print(airports)

if let oldValue = airports.updateValue("Barcelona El Prat", forKey: "BCN") {
    print("Old value of this airport was \(oldValue)")
}

if let airportName = airports["LHR"] {
    print("I have an airport called \(airportName)")
} else {
    print("That airports does not exist")
}

airports["MAD"] = nil // Delete "MAD": "Madrid"
print(airports)

if let removedAirport = airports.removeValue(forKey: "PMI") {
    print("We have just closed the airport in \(removedAirport)")
} else {
    print("That airport is not in the list")
}
print(airports)

print("===============================================================================================")

// Loops
for (key, value) in airports {
    print("\(key) - \(value)")
}

print("===============================================================================================")

for (_, airportName) in airports {
    print(airportName)
}

print("===============================================================================================")

for key in airports.keys {
    print("Airport code: \(key)")
}

print("===============================================================================================")

for value in airports.values {
    print("Airport name: \(value)")
}

print("===============================================================================================")

// Casting to array
let airportKeys = [String](airports.keys).sorted()
let airportNames = [String](airports.values).sorted()
