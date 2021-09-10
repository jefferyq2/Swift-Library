import Foundation

let p = (firstName: "Emir", middleName: "Yoda", lastName: "Bostancı")

print(p.firstName)


func divide(x: Int, y: Int) -> (Int,Int) {
    let quotient = x / y
    let remainder = x % y
    
    return (quotient,remainder)
}

divide(x: 7, y: 2)

func topTwoLongestNames(names: [String]) -> (String,String) {
    
    var longestName: String = ""
    var secondLongestName: String = ""
    
    if let maxName = names.max(by: {$1.count > $0.count}) {
        longestName = maxName
        let newNames = names.filter { $0 != longestName }
        
        if let secondName = newNames.max(by: {$1.count > $0.count}) {
            secondLongestName = secondName
        }
    }
    
    return (longestName,secondLongestName)
}


topTwoLongestNames(names: ["Kerker","Esay","Çükübik","TahtaAdam", "MoneyKEYF"])
