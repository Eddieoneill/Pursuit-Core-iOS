import UIKit

// structs, classes and initialization

/*
 - structs have a memberwise initializer, classes do not
 - classes have to provide an initializer if ANY of its properties do not have a default value
 */

struct Fellow {
    
    // type properties, class properties
    static let currentYear = 2019 // Fellow.currentYear
    // yulia.currentYear would be a compiler ERROR
    
    var age: Int
    var cohort: Double
    var currentlyEmployed: Bool
    
    
    // type methods, class method, static methods
    static func programInfo() {
        print("This is a 10-month intensive program")
    }
    
    
    mutating func employed(isEmployed: Bool) {
        currentlyEmployed = isEmployed
    }
}

// making use of struct's memberwise initializer
var yulia = Fellow(age: 21, cohort: 6.3, currentlyEmployed: false)

print("Pursuit fellows current year is \(Fellow.currentYear)")
print(Int.max) // 9223372036854775807
// Int.max is known as accessing an (Type property)
// e.g .max ONLY works on the ((type)) Int NOT an instance of Int

Fellow.programInfo()

let someInt = 0
// someInt.max // Does not complile because an instance of int cannot call (Type Property)


class Animal {
    var age: Int
    var breed: String
    
    init(age: Int, breed: String) {
        self.age = age
        self.breed = breed
    }
    
    // instance method
    func info() {
        print("The \(breed) is \(age) old")
    }
}

// Dog is ingeriting Animal
// subclass in Dog, parent class in Animal
class Dog: Animal {
    
}

let frenchBulldog = Dog(age: 11, breed: "French Bulldog")
frenchBulldog.info()

class Playlist {
    // properties
    var name: String
    var trackCount: Int
    var description: String
    var isTop100: Bool
    
    // designated initializer
    init(name: String,
         trackCount: Int,
         description: String,
         isTop100: Bool){
        self.name = name
        self.trackCount = trackCount
        self.description = description
        self.isTop100 = isTop100
    }
    
    convenience init?(dict: [String: Any]) {
        // using guard let to unwrap value from key in dictionary
        // also we are using optional downcasting as? to cast to expected type
        guard let name = dict["name"] as? String,
            let trackCount = dict["trackCount"] as? Int,
            let description = dict["description"] as? String,
            let isTop100 = dict["isTop100"] as? Bool
            else { return nil }
        self.init(name: name, trackCount: trackCount, description: description, isTop100: isTop100)
        
    }
    
    convenience init() {
        let name = ["Pursuit Coding list", "Zumba rocks", "Study playlist", "90's", "Morning Run"]
        
        self.init(name: name.randomElement() ?? "ZI100", trackCount: 200, description: "Awesome coding music" , isTop100: true)
    }
    
    convenience init?(name: String) {
        if name.count < 5 {
            return nil
        }
        self.init(name: name, trackCount: 34, description: "Currently trending", isTop100: true)
    }
    
    // instance method
    func info() {
        print("\(name) contains \(trackCount) tracks. \(description)")
        if isTop100 {
            print("\(name) is on the top 100 Spotify list")
        }
    }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019",
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true,
]

if let list = Playlist(dict: playlistDict) {
    print(list.trackCount)
}

let randomPlaylist = Playlist()
print(randomPlaylist.name)
let test = Playlist(name: "five")
