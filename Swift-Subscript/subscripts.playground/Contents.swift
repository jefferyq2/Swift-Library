import Foundation

struct Classroom {
    var students = [
        ["Messi", "Ronaldo", "Neymar", "Pogba"],
        ["Çükübik", "Efü", "Ertürk", "Çözmen"],
        ["Otis", "Eric", "Maeve", "Ruby"]
    ]
    
    subscript (row: Int, col: Int) -> String {
        get {
            return students[row][col]
        }
        set {
            students[row][col] = newValue
        }
        
    }
}

var clas = Classroom()

clas[0,2] = "Kerker"

clas[0,2]
