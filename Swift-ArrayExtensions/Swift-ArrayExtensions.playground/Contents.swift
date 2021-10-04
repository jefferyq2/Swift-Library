import Foundation

// sum all the Int numbers

func sumNumbers(numArray: [Int] ) -> Int {
    
    var sum = 0
    
    for num in numArray {
        sum += num
    }
    return sum
}

sumNumbers(numArray: [0, 2, 2, 5, 6])

// ANOTHER WAY TO SUM numbers

func sumNumbersEasy(numArray: [Int] ) -> Int {
    
    return numArray.reduce(0, {$0 + $1})
    
}

sumNumbersEasy(numArray: [2, 2, 5, 7, 4])

// Array Extension is like creating the func you need we did it numeric to calculate with every Type

extension Array where Element: Numeric {
    
    func sum() -> Element {
        return self.reduce(0, {$0 + $1})
    }
}

let cgfloatArray: [CGFloat] = [3.5, 3.7, 4.3, 2.5]

cgfloatArray.sum()
