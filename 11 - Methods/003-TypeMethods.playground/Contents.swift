import UIKit

// Type methods
/*
 Pueden ser llamados sin necesidad de instanciar un objeto de esa clase/estructura/enumeración.
 Llevan la palabra reservada "class" o "static" (equivalentes) en la declaración del método.
 */

class SomeClass {
    static var value = 0
    
    class func someFunc() {
        // It must be a static variable to be modified in a static or class method
        value = 5
        print("Some function!!")
    }
    
    static func helloWorld() {
        print("Hello world!!")
    }
}

SomeClass.someFunc()
SomeClass.helloWorld()


struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlockLevel(_ level: Int) {
        if highestUnlockedLevel < level {
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    // Si el valor de retorno puede que no se utilice para nada, se le puede añadir al método el siguiente atributo, y así no recogemos el valor de retorno (como si fuera un void)
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        }
        return false
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    
    // Constructor
    init(name: String) {
        self.playerName = name
    }
    
    // Getter
    func getName() -> String {
        return playerName
    }
    
    func complete(level: Int) {
        LevelTracker.unlockLevel(level + 1)
        tracker.advance(to: level + 1)
    }
}

let player = Player(name: "Diego")

player.complete(level: 1)
print("Ahora el nivel más alto desbloqueado es el \(LevelTracker.highestUnlockedLevel)")

let player2 = Player(name: "Alicia")

player2.tracker.advance(to: 6) ? print("El jugador \(player2.getName()) está en el nivel 6") : print("El jugador \(player2.getName()) no puede avanzar todavía al nivel 6")

player2.complete(level: 5)
player2.tracker.advance(to: 6) ? print("El jugador \(player2.getName()) está en el nivel 6") : print("El jugador \(player2.getName()) no puede avanzar todavía al nivel 6")

