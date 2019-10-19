import UIKit

//## Question 6
//
//a. Given the variable `numbers` below, write code that prints "The sum of all the numbers is " followed by their sum.  If a number is `nil`, don't add it to the sum.  If all numbers are `nil`, the sum is zero.
//
//```swift
//var numbers = [Int?]()
//
//for _ in 0..<10 {
//    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
//}
//```
//Answer
//```swift
//var numbers = [Int?]()
//var sum = 0
//
//for _ in 0..<10 {
//    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
//}
//
//for num in numbers {
//    sum += num ?? 0
//}
//
//print("The sum of all the numbers is \(sum)")
//```
//b. Using the same variable, find the average of all non-nil values.
//
//Answer
//```swift
var numbers = [Int?]()
var sum = 0
var count = 0

for _ in 0..<10 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
}

for num in numbers where num != nil {
    sum += num ?? 0
    count += 1
}


print("The sum of all the numbers is \(sum / count)")




// You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his / her full name.

var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var highestScoringName = ""
var highestScore = 0

for dict in peopleWithScores {
    let currentScore = (Int(dict["score"] ?? "") ?? 0)
    let currentName = "\(dict["firstName"] ?? "") \(dict["lastName"] ?? "")"
    if currentScore > highestScore {
        highestScore = currentScore
        highestScoringName = currentName
    }
}


assert(highestScoringName == "Garry Mckenzie", "Was expecting Garry Mckenzie, but got \(highestScoringName)")
