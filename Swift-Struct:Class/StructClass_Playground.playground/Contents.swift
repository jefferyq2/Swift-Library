import Foundation

class OffensePlayer {
    var position: String
    var team: String
    
    init(p: String, t: String) {
        self.position = p
        self.team = t
    }
}

let ladanianTomlinson = OffensePlayer(p: "RunnigBack", t: "Free Agent")

let bestRB = ladanianTomlinson

bestRB.team = "Chargers"

print(ladanianTomlinson.team)

// Class = Reference Type   -   Struct = Value Type

struct DefensePlayer {
    var position: String
    var team: String
}

let edReed = DefensePlayer(position: "DefensiveBack", team: "Free Agent")

var bestDB = edReed

bestDB.team = "Ravens"

print(edReed.team)


