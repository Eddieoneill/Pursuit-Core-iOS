import UIKit
import Foundation


// Questions Review: Sets

// Questions Two
// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.
// It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]
var scoresThatAppearOnce = [Int]()
var scoreFilter: Set<Int> = []
var removedNum: Set<Int> = []

for score in scores {
    if !removedNum.contains(score) {
        scoreFilter.insert(score)
        removedNum.insert(score)
    } else {
        scoreFilter.remove(score)
    }
}

for score in scores where scoreFilter.contains(score) {
    scoresThatAppearOnce.append(score)
}


assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")


// Question Five
// Determine if a String is a pangram. A pangram is a string that contains every letter of
// the alphabet at least once.
// e.g "The quick brown fox jumps over the lazy dog" is a pangram
// e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram
let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

// Your code here
//assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
//assert(strThreeIsPangram == true, "Was expecting true, but got \(strThreeIsPangram)")
//Collapse





