import UIKit

// Questions review

// dictionary question

// given an array of integers return a dictionary of occrurences of each integer
// input: [1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8]
// output: [7: 1, 1: 4, 3: 2, 8: 2, 2: 1, 4: 1]

func occurenceOfInteger(arr: [Int]) -> [Int: Int] {
    var frequencyDictionary = [Int: Int]()
    
    for num in arr {
        if let count = frequencyDictionary[num] {
            frequencyDictionary[num] =  count + 1
        } else {
            frequencyDictionary[num] = 1
        }
    }
    
    return frequencyDictionary
}

let output = [7: 1, 1: 4, 3: 2, 8: 2, 2: 1, 4: 1]
occurenceOfInteger(arr: [1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8]) == output


// write a function called largestValue(in: ) that finds the largest Int in an array Ints. Use reduce to solve this exercise

func largestValue(in numbers: [Int]) -> Int {
    var result = numbers[0]

    //using guard to ensure an array is not empty
    //guard numbers.count > 0 else { return -1 }
    
    //using guard to get the first element in the array
    guard let first = numbers.first else { return -1 }
    
    
//    if let first = numbers.first {
//        // ONLY has access to first inside if let statement
//    } else {
//        // you do not have access to let  first
//    }
    

    result = numbers.reduce(first) { prevResult, currentValue in
        if prevResult > currentValue {
            return prevResult
        } else {
            return currentValue
        }
    }
    
    result = numbers.max() ?? first
    // numbers.reduce(0, *)
    
    return result
}

largestValue(in: [11,4,5,2,5,6,9,10])


