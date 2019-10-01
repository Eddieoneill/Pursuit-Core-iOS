import UIKit
import Foundation

// What will happen when the code below is run?

// a condstant can ONLY be initialized once

//var numberOfBagels = 15
//let isOverADozon: Bool
//
//if numberOfBagels > 12 {
//    print("isOverADozon = true")
//    isOverADozon = true
//} else {
//    isOverADozon = false
//}
//
//if isOverADozon { // isOverADozon is true here
//    print("You have more than 12!")
//} else {
//    print("You have less than 12!")
//}

//=====================================================
//           range - close range and galf range
//=====================================================

let closeRange = 1...10 // inclusive or close range
let halfRange = 1..<10 // exclusive or half close range

//=====================================================
//                    for in loop
//=====================================================

for num in 1...10 { // inclusively prints 1 to 10
    // print() default terminator is "\n"
    // the new line charaacter
    print(num, terminator: " -> ") // default parametr is  "\n" replace with "anything inside here"
}

print()


//=====================================================
//          preview using loops with arrays
//=====================================================
// array of String's
let pursuitStacks = ["iOS", "web", "android"]

for pursuitClass in pursuitStacks {
    // printing using String Interpolation
    print("Pursuit class is \(pursuitClass)")
}

let fellows = ["Tiffany", "Yulia", "Joshua", "Maitree"]

for fellow in fellows {
    if fellow == "Joshua" {
        print("\(fellow) is awesome!")
    } else {
        print("\(fellow) is awesome too 👏🏻")
    }
}

let tempratures = [69, 75, 87, 64, 64, 61, 68, 100]

for  temp in tempratures {
    switch temp {
    case 87...: // include 87 adn greater
        print("Catch me at the beach 🏖")
    default:
        print("Just another day")
    }
}

let message = "Happy Monday iOS 6.3"

for _ in 0..<5 {
    print(message)
}


//=====================================================
//            control transfer statement
//              where, break, continue
//=====================================================

// Qiestopm: use where to print ONLY numbers ending in 5 inclusively

// where
for number in 1...100 where number % 10 == 5 {
    print("\(number)'s last digit is 5")
}

// break - exit loop or end loop, stop looping
for num in 1...10 {
    if num == 7 {
        print("Happy birthday, Miles")
        break // exit loop or end loop, stop looping
    } else {
        print("Not your birthday yet, you're only \(num) years old")
    }
}

// continue
for num in 1...10 {
    if num % 2 == 0 { // even numbers
        // increment (add)
        // increment to next value
        // e.g if current value is 2
        // 2 mod(modulo operator - renainder) or 2 % 2 is 0
        continue // to the next value, skip
    }
    print(num)
}


//=====================================================
//                  whilte loop
//=====================================================

var seconds = 30

while seconds >= 0 {
    if seconds == 0 {
        print("            🚀")
        print("          🔥")
        print("        💨")
        print("      💨")
        print("    💨")
        print("  💨")
    } else {
        print("countdown \(seconds)....")
           // while condition NEEDS a way to stop the loop
           // or it will run infinetely (forever) until your playground explodes hahahaaaa runs out of resource
    }
   
    // without decrementing seconds the while loop will be ub what's known as an (infinete loop)
    seconds -= 1 // decrementing seconds by 1
}


//=====================================================
//                repeat-while loop
//=====================================================

var isPlaying = false
var currentLevel = 1
var finalLevel = 10

repeat {
    // code here
    //  using String interpolation to show current level
    if isPlaying {
        print("playing level \(currentLevel)")
        if currentLevel == finalLevel {
            print("I will definetely recommend this game.")
            isPlaying = false // stops the game
        }
        currentLevel += 1
    } else {
        // player is seeing our game for the first time
        print("Trying out Pursuit Arcade for the first time.")
        isPlaying = true
    }
} while isPlaying == true


//=====================================================
//                  nested loops
//=====================================================


for i in 1...5 { // outer for loop - executes 5 times
    // first time it enters the for loop i is 1
    for j in 1...5 { // inner for loop - executes 5 time
        print("\(i) * \(j) is \(i * j)")
    }
}


//=====================================================
//                  labels in loops
//=====================================================

let product = 50 // product is the multiplication of two values e.g 4 * 5 = 20

outerloop: for i in 1...10 {
    innerloop: for j in 1...10 {
        if i * j == product {
            print("product was found by multiplying \(i) * \(j)")
            break outerloop
        } else {
            print("keep searching.....")
        }
    }
}
