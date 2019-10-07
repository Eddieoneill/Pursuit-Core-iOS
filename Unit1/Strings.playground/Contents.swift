import UIKit

// String - a collection of unicode comliant characters

/*
 Vocabulary
 - unicode
 - character
 - literal String e.g "hello"
 */

// declaring and initializing a literal String
var message = "Good morning iOS 6.3"

// iterate or loops over a String using a for-in loop
for char in message {
    print("character is \(char)")
}

// length of String using the count property
print("message count is \(message.count)")

//=======================================================
//                        unicode
//           e.g a space in unicode U+0020
//=======================================================

// a character is made up or  one or more unicode scalars

// e.g of unicode scaler \n{301} `e

// combining unicode scalars
let name = "al\u{0065}\u{301}x"

let bagel = "\u{1F96F}"


// comparing unicode scalar with character
let unicodeLowercaseE = "\u{0065}"
let eCharacter = "e"
if unicodeLowercaseE == eCharacter {
    print("they are equal")
}

// accessing and modifying String
let programmingLanguage = "Swift"


let fellows = ["Kelby", "Stephanie"]

fellows.count

let firstFellow = fellows[0]

//access the first character in "Swift" => "S"
// programmingLanguage[0] - DOES NOT COMPILE

// firstIndex is of type String.Index not an Int
let firstIndex = programmingLanguage.startIndex

// only way to subscript [] into a String is using a String.Index value
let firstCharacter = programmingLanguage[firstIndex]

print("first character in \(programmingLanguage) is \(firstCharacter)")

let endIndex = programmingLanguage.endIndex
let lastCharacterIndex = programmingLanguage.index(before: endIndex)
let lastCharacter = programmingLanguage[lastCharacterIndex]
print("last character in \(programmingLanguage) is \(lastCharacter)")


//=======================================================
//             making a range using indices
//=======================================================

let alphabets = "abcdefghijklmnopqrstuvwxyz"

// using a for loop print out the first 6 characters in the alphabet
var counter = 0
for char in alphabets {
    if counter < 6 {
        print(char)
        counter += 1
    } else { break }
}
print("for loop has ended")

//using a for-loop and enumerated() print the first six alphabets

for (index, alphabet) in alphabets.enumerated() {
    if index < 6 {
        print("\(alphabet) at index \(index)")
    } else { break }
}

let alphabetsStartIndex = alphabets.startIndex


//=======================================================
//                 multi-line Strings
//=======================================================


let multilineString = """
Hello
Hello
Hello
"""

print(multilineString)


// Question: given a String  switch on it and print all the characters if it is even or print other character if it is odd.

let message2 = "Good afternoon"

print("there are \(message2.count) characters in the string")

if message2.count % 2 == 0 {
    print("string is even")
} else {
    print("string is odd")
}

// solution for question above:
switch message2 {
case message2 where message2.count % 2 == 0:
    for char in message2 {
        print(char, terminator: " ")
    }
default:
    for (index, char) in message2.enumerated() where index % 2 == 1{
        print(char, terminator: " ")
    }
}
// "\n" is the endline escape character

//=======================================================
//                 escepe characters
//       e.g "\n" - newline "\t" - tab "\"" - quote
//=======================================================
// newline example
let message1 = "\nHello\niOS 6.3\nGreat to have you"
print(message1)

let tabMessage = "\n\tProgramming is fun"
print(tabMessage)

let quote = "In \"2014\" Swift was introduced"
print(quote)


//=======================================================
//          Using String initialization methods
//=======================================================

let char: Character = "a"
// initializing a String from a Character
let str = String(char)

print(type(of: char))
print(type(of: str))

// initialize a String from an Integer (Int)
let currentYear = String(2019)
print("current year is \(currentYear)")

let float: Float = 23.56
let double = 45.12
let result = Double(float) + double

print(result)

//=======================================================
//      string format e.g formatting decimal places
//=======================================================
print("the result of the calculation is above is", String(format: "%.2f", result))


//=======================================================
//            creating a range on a String
//=======================================================
let messageToSelf = "I really love Swift and I'm passionate about coding."

// getting the first position of messageToSelf
let startIndex = messageToSelf.startIndex

let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18)
let range = startIndex...offsetToSomeCharIndex

// DOES NOT COMPLE SUBSCRIPT [Int] NOT ALLOWED USING AN INT, ONLY WORKS ON A [String.Index] type
// let substring = messageToSelf[0]

let substring = messageToSelf[range]

print("substring is \(substring)")


//=======================================================
//     search for the index of a character in a String
//=======================================================
let swiftMessage = "I really love Swift 🍺"
// emoji => control, command, space

let charIndex = swiftMessage.firstIndex(of: "🍺") ?? swiftMessage.startIndex

print("We found \"\(swiftMessage[charIndex])\" in swiftMessage String")


//=======================================================
//                  prefix and suffix
//=======================================================

// hasPrefix()
let name2 = "alex"
if name2.hasPrefix("al") { // hasPrefix() method return a Bool whether the prefix in the String was found
    print("Hi AL")
}


// hasSuffix()
let message3 = "questions"
if message3.hasSuffix("ions") {
    print("we also have onions")
}

if message3.contains("q") { // rentime for contains is linear or big o of n or O(n)
    print("message3 contains q")
}


//=======================================================
//               some Character properties
//=======================================================
let character1: Character = "y"
if character1.isLetter {
    print("\(character1) is a letter")
}

// isCurrency e.g $

// isPunctuation e.g ?

// isnumber e.g 4

//=======================================================
//           NSString is an Objective-C API
// API: application programming interface
//=======================================================
var message4 = "coding"
message4 = message4.replacingOccurrences(of: "g", with: "🚀")
print(message4)

var fullName = "Alex Paul"
var sepaeratedNames = fullName.components(separatedBy: " ")

print("there are \(sepaeratedNames.count) items")
print(sepaeratedNames)
