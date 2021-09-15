import Foundation

enum RunningBacks {
    case saquon(point: Int)
    case kamara(point: Int)
    case cmc
}

func fantasyPoint(with name: RunningBacks) {
    switch name {
    case .saquon(let point) where point > 16:
        print("saquonu al takımına")
    case .kamara(let point) where point > 18:
        print("kamarayı al takımına")
    case .cmc, .kamara, .saquon:
        print("hiçbirini takıma alma")
    }
}

fantasyPoint(with: .saquon(point: 17))
