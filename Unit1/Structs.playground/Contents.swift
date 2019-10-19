import UIKit

// structs: is a building block of a method in which we emulate an "object" in Swift

//=====================================================================
//                          struct syntax
//=====================================================================

// SomeStruct below defines an "object"
// Object-oriented programming (OOP) - encapsulates properties and methods of real workd objects
struct SomeStruct {
    // definition of the struct includes the following:
    // properties - variables or constants on the type (struct)
    // initializers - the method in which you create a type
    // methods - function inside of a custom type (struct)
}

struct Resolution {
    // properties
    // stored properites - a property with a default value
    // a property is a variavle or constant
    var width = 0
    var height = 0
}

//=====================================================================
//              create an instance of Resolution struct
//=====================================================================

var someResolution = Resolution()

// accessing properties of Resolution using dot syntax
someResolution.width = 1080

print(someResolution)

// structs have a memberwise initializer as opposed to a class that does not
var vga = Resolution(width: 640, height: 480)
print(vga)

//=====================================================================
//          structs and enums and  ****** value types *******
//=====================================================================

let hd = Resolution(width: 1920, height: 1080)
// ***Copy does not change the original object***

// what is the value of cinema's here // 1920
var cinema = hd // cinema gets a **copy** of hd

cinema.width = 2048

// what's the value of hd's width????
print(hd.width) // 1920


//======================================================================
//      using object-oriented progtamming to model a Fellow
//======================================================================

enum ProgrammingLanguage {
    case swift
    case objectiveC
    case java
    case javescrips
    case python
    case noLanguage
}

struct Project {
    var projectName = ""
    var projectDescripsion = ""
    var programmingLanguage = ProgrammingLanguage.noLanguage
}

enum Cohort {
    case iOS
    case android
    case web
    case dataScience
}

struct Fellow {
//======================================================================
    // properties
//======================================================================
    var name = "John Appleseed" // stored properties
    var cohort = Cohort.iOS
    var programmingLanguages = [ProgrammingLanguage]()
    var githubURL = ""
    var linkedInURL = ""
    var hasProgrammingBackground = false
    var projects = [Project]() // projects
    
//======================================================================
    //initializers
//======================================================================
    
//======================================================================
    // methords
//======================================================================
    
    // class methods
    
    // instance methods
    // can ONLY called using instanceName.info()
    func info () {
        print("\(name) currently has \(projects.count) protfolio project(s)")
    }
    
    func resume(language: ProgrammingLanguage) {
        // self represents the instance of Fellow that called
        // resume() e.g gregg.resume(language: .swift)
        if self.programmingLanguages.contains(language) {
            print("\(name) can be hired for this \(language) position.")
        } else {
            print("\(name) is not qualified for this position.")
        }
    }
}




var gregg = Fellow()
gregg.name = "Gregg"
gregg.cohort = .iOS
gregg.projects.append(Project(projectName: "Hangman", projectDescripsion: "Hangman command-line macOS application", programmingLanguage: .swift))
gregg.info()

// Fellow.info() DOES NOT COMPILE NOT A CLASS METHOD

// created an instance of Fellow called oscar and sed the memberwise initializer
var oscar = Fellow(name: "Oscar", cohort: .iOS, programmingLanguages: [.swift], githubURL: "", linkedInURL: "", hasProgrammingBackground: false, projects: [Project]())
let calculator = Project(projectName: "Calculator", projectDescripsion: "Calculator command-line application", programmingLanguage: .swift)
let instaClone = Project(projectName: "Instagram Clone", projectDescripsion: "Best photo sharing social app", programmingLanguage: .java)
oscar.projects.append(calculator)
oscar.projects.append(instaClone)
oscar.info()
oscar.resume(language: .javescrips)
oscar.resume(language: .swift) // 🥳


