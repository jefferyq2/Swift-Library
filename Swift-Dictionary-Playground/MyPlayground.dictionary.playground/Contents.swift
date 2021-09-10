import UIKit
import Foundation

let colorArray = ["red", "red", "blue", "black", "black", "orange", "yellow", "red", "green", "black", "orange", "green", "black", "blue", "red", "black", "yellow", "green", "orange", "yellow", "black", "orange", "green", "black", "red", "grey", "orange", "yellow", "black", "blue", "red", "white", "grey", "purple", "red", "orange", "blue", "white", "blue", "red", ]

func getMostCommonColor(array: [String]) -> [String] {
    
    var topColor: [String] = []
    var colorDict: [String : Int] = [:]
    
    for color in array {
        if let count = colorDict[color] {
            colorDict[color] = count + 1
        } else {
            colorDict[color] = 1
        }
    }
    
    let highestValue = colorDict.values.max()
    
    let lowestValue = colorDict.values.min()
    
    for (color, _) in colorDict {
        if colorDict[color] == highestValue {
            topColor.append("highest value \(color)")
        } else if colorDict[color] == lowestValue {
            topColor.append("lowest value \(color)")
        }
    }
    
    
    return topColor
}

getMostCommonColor(array: colorArray)
