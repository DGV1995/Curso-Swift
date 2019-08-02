import UIKit

// Multiple subscripts (multiple parameters)
struct Matrix {
    let rows: Int
    let columns: Int
    var grid = [Double]()
    
    // Constructor
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows*columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row <= rows && column <= columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Índice no disponible en la matriz")
            return grid[row*columns + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Índice no disponible en la matriz")
            grid[row*columns + column] = newValue
        }
    }
    
    func matrixForm() {
        for i in 0..<rows {
            var line = ""
            for j in 0..<columns {
                // Utilizamos el subscript declarado anteriormente
                line += "\(self[i,j]) "
            }
            print(line)
        }
    }
}

var matrix = Matrix(rows: 3, columns: 4)
print(matrix.grid)

matrix.indexIsValid(row: 5, column: 2) // false

matrix[1,0] = 2.5
matrix[0,1] = -5.3
matrix[2,3] = -1.2
print(matrix.grid)

print("")

matrix.matrixForm()

