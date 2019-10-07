import UIKit

// Questions Review: October 4, 2019

// String Lab
// Question: Given a String use a for-in loop to reverse it. e.g "hello" output: "olleh"
let message = "eddie oneill"
var reversedString = ""
for currentChar in message {
    // we wasnt to loop through the given message String and add the characters we visit in reverse order to our reversedString
    
    reversedString = currentChar.description + reversedString
    
    //reversedString = Stirng(currentChar) + reversedString
    
    // (currentChar + reversedString)
    // 1. "" + "h" => "h"
    // 2. "h" + "e" => "eh"
    // 3. "l" + "eh" => "leh"
    // 4. "l" + "leh" => "lleh"
    // 4. "o" + "lleh" => "olleh"
}
print(reversedString)

// Arrays Lab

/*
 Question:
 Given an array of Strings, find the String with the most a's in it.
 
 input: ["apes", "abba", "apple"]
 
 output: "abba"
*/

let arr = ["apes", "abba", "apple", "blh", "haah"]
var overallCount = 0
var stringWithMostAs = ""


for str in arr {
    
    // in the future we can use filter{} here
    
    // we will create a local variable keep track of a's in current String
    var localCount = 0
    for char in str { // String.Element == Character
        if char == "a" {
            localCount += 1
        }
    }
    
    // here we willcomparing a's count
    if localCount > overallCount { // 1st time looking at apes, apes is more
        overallCount = localCount // override overallCount
        stringWithMostAs = str
    }
}

print("\(stringWithMostAs) has the most a's which has a count of \(overallCount)")
