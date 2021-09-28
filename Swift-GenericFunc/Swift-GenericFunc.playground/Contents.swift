import Foundation

let IntArray = [1, 3, 5, 6, 12, 15, 23]
let abcArray = ["a", "b", "c", "e", "f", "h"]

func letterSearcher(_ array: [String], letter: String) -> Int? {
    
    for (index, element) in array.enumerated() {
        if element == letter {
            return index
        }
    }
    return nil
}

letterSearcher(abcArray , letter: "f")


func genericSearcher<T:Comparable> (_ array: [T], value: T) -> Int? {
    for (index, element) in array.enumerated() {
        if element == value {
            return index
        }
    }
    
    return nil
}


genericSearcher(abcArray, value: "c" )

genericSearcher(IntArray, value: 15)
