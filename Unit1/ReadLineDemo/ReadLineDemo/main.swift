//
//  main.swift
//  ReadLineDemo
//
//  Created by Edward O'Neill on 9/27/19.
//  Copyright © 2019 Eddie O'Neill. All rights reserved.
//

// Use ReadLine() to get input from the user

import Foundation

print("Enter how many days you will swim, bike or run this week?")
var numberOfDays = Int(readLine() ?? "-1") ?? -1

let workoutCount = numberOfDays
print() // creates a new line

/*
 repeat {
    // execute code
 } while (condition is true)
 */

repeat { // repeat-while loop
    
    if numberOfDays == 0 {
        break // exits the loop
    } else if numberOfDays == -1 {
        break
    }
    
    print("enter the type of workout, swim, bike or run: ")
    let workout = readLine()?.lowercased()
    print() //creates a new line
    
    switch workout {
    case "swim":
        print("swim \(Int.random(in: 1...100)) lengths of the pool")
    case "bike":
        print("bike \(Int.random(in: 1...100)) loops of the Central Park")
    case "run":
        print("run \(Int.random(in: 1...100)) laps of the around the track")
    default:
        print("no such workout")
    }
    
    numberOfDays -= 1 // decrementing - e.g 5 days, 4, 3, 2, 1, 0
    print() // creates space between lines
    
} while numberOfDays > 0

switch workoutCount {
case -1:
    print("bad date was entered")
case 1..<5:
    print("Good job this week")
case 5...:
    print("YOU'RE A ROCKSTAR 🏊🏻‍♂️ 🚵🏻‍♂️ 🏃🏻‍♂️ 🔥🔥🔥🔥🔥🔥🔥🔥🔥")
default:
    print("Slacker you can do better......")
}

// command + r => only builds and checks for errors
// command + b => builds and runs the application
