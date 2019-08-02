import UIKit

// Instance methods
/*
 You need an instance object of the class to use them
 */

class Counter {
    var count = 0
    
    func setCount(_ count: Int) {
        self.count = count
    }
    
    func increment() {
        count += 1
    }
    
    func getCount() -> Int {
        return count
    }
    
    func increment(by amount: Int) {
        count += amount
        
        /*for i in 0..<amount {
            self.increment()
        }*/
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.getCount())

counter.increment(by: 4)
print(counter.getCount())

counter.reset()
print(counter.getCount())

counter.setCount(3)
print(counter.getCount())


struct Point {
    var x = 0.0
    var y = 0.0
    
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

let point = Point(x: 4.0, y: -2.0)
point.isToTheRightOf(x: 5.5) ? print("El punto está a la derecha de la recta que pasa por x=1.5") : print("El punto está a la izquierda de la recta que pasa por x=1.5")
