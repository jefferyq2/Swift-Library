import Foundation

let array = [2, 2, 2, 2, 3, 5]

print(array)

// Filter Odd Numbers

let filterArray = array.filter({
    return $0 % 2 == 1
})

print(filterArray)

// Map multiply with 2

let mapArray = array.map({$0 * 2})

print(mapArray)

// Reduce sum all elements

let reduceArray = array.reduce(0) {runningSum, value in
    runningSum + value
}

print(reduceArray)
