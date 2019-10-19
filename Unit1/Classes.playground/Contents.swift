import UIKit

// classes: buiding blocks that enable us to create complex "objects" in our program. those objects are created using properties

//============================================================================
//                          class syntax
//============================================================================

class MyFirstClass {
    
}

// Day not has added functionality to count how many cases it has e.g here it is 3
enum Day: CaseIterable {
    case monday, tuesday, wednesday
}

//============================================================================
//         inheritance - ONLY classes can inherit from other classes
//============================================================================

class Person {
    var name = "Jane Doe" // stored property
    var age = 21
    
    
    // instance method
    func info() {
        print("This person name is \(name) and age is \(age)")
    }
}

// Fellow inherits from Person
// Fellow is a subclassof Person
// Person is the parent or siperclass of Fellow
// In Swift we only have single inheritance, meaning you can ONLY inherit from one parent

// Object-oriented programming consists on those concepts:
// - inheritance
// - encapsulation
// - polymorphism
class Fellow: Person {
    override func info() {
        print("\(name) is a fellow at Pursuit and is \(age) old")
    }
}

// creating an instance of Fellow()
let brendon = Fellow()
brendon.name = "Brendon"
brendon.age = 31
brendon.info()

// before the Fellow class over rode info(method from the Parent class this was the output from the print statement
// This person name is Brendon and age is 31

// after over ridding info() ub the Fellow class the print statement comes from the overriden method
// Brendon is a fellow at Pursuit and is 31 old


class Employee: Person {
    // properties
    var position = "iOS developer"
    var salary = 85_000
    
    // instance method
    override func info() {
        print("\(position) is making $\(salary)")
    }
}



//============================================================================
//              polymorphiesm - changing form on an object
//============================================================================

// instance of a Person
let tom = Person()

// instance of a Employee
let john = Employee()
john.name = "John"
// instance of a Fellow
let bienbenido = Fellow()
bienbenido.name = "Bienbenido"
// an array of instances from above
let people = [tom, john, bienbenido]

for person in people {
    person.info()
}

//============================================================================
// struct are value-type - meaning assigning  a new variable that new variable
//                         gets a copy of the original. Changing the copy does
//                         not change the original
//
// classes are reference types - multiple instances point to the same object
//                               meaning object b can mutate object a
//============================================================================

let anna = Fellow()
let luba = anna

//============================================================================
//   Swift provides a way to check for object equality of identity using ===
//============================================================================

if anna === luba { // ONLY available on classes
    print("both object are pointing to the same reference")
}


//============================================================================
//
//============================================================================

struct Dog {
    var breed: String
    var age: Int
}

// creating the instance of Dog using the memberwise initializer of the Dog struct, ONLY structs provide memberwise initialzers
var frenchBulldog = Dog(breed: "French Bulldog", age: 7)

//compiler error if class does not provide default values for ALL properties
class Game {
    var name: String
    var noOfPlayers: Int
    
    init(name: String, noOfPlayers: Int) {
        self.name = name
        self.noOfPlayers = noOfPlayers
    }
}


var codbo3 = Game(name: "COD BO3", noOfPlayers: 16)

class Playlist {
    var name: String
    var trackCount: Int
    var description: String
    var isTop100: Bool
    
    init(name: String, trackCount: Int, description: String, isTop100: Bool) {
        self.name = name
        self.trackCount = trackCount
        self.description = description
        self.isTop100 = isTop100
    }
    
    func info() {
        print("name: \(name), trackCount: \(trackCount), description: \(description), \(isTop100) that is an top 100")
    }
}

let playlistDict: [String: Any] = ["name": "tylor",
                                   "trackCount": 1,
                                   "description": "Awesome playlist",
                                   "isTop100": false]

func converter(dict: [String: Any]) -> Playlist {
    let name = dict["name"] as? String ?? "no name available"
    let trackCount = dict["trackCount"] as? Int ?? 0
    let description = dict["description"] as? String ?? "no description available"
    let isTop100 = dict["isTop100"] as? Bool ?? false
    let playlist = Playlist(name: name,
                            trackCount: trackCount,
                            description: description,
                            isTop100: isTop100)
    
    return playlist
}

let playlist = converter(dict: playlistDict)

playlist.info()
