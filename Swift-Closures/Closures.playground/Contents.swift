import Foundation

typealias PlaygroundCompletion = (String) -> ()

func getData( completion: (PlaygroundCompletion)) {
    
completion("Something else")
}

getData() { string in
    print(string)
}
