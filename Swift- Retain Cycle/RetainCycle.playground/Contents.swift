import Foundation

class Person {
    let name: String
    var pet: Pet?
    
    init(n: String, p: Pet?) {
        self.name = n
        self.pet = p
    }
    
    deinit {
        print("Deinitilized class Person")
    }
}

class Pet {
    let name: String
    
    // Since we make this "weak" we could deinitilize the person class
    weak var owner: Person?
    
    init(n: String, o: Person?) {
        self.name = n
        self.owner = o
    }
    
    deinit {
        print("Deinitialized Class Pet")
    }
}

var esay: Person?
var kaos: Pet?

 esay = Person(n: "ESAY", p: nil)

 kaos = Pet(n: "KAOS", o: nil)


func searchWho() {
    
    esay?.pet = kaos
    kaos?.owner = esay
    
    esay = nil
    
}

searchWho()
