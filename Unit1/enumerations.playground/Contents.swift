import UIKit

//enumerations or enum: group of relation value or item
// e.g day of the week, mta train lines, number of fingers, compass points

// enum keyword start the enum definition
//followed by the name of the enum, which should start with a capital letter to keep with Swift coding convention, also this signifies that enum is a data type to the reader of your code, CompassPpoint
enum CompassPoint {
    case north
    case south
    case east
    case west
}

// create an enum of days of the week

enum DaysOfTheWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//=======================================================================
//    using a switch statement we will switch on an enum instance
//=======================================================================

// instance of a String
let name = "Bob"

// creating an instance of the enum DayOfTheWeek
var day = DaysOfTheWeek.tuesday
day = .monday

switch day {
case .monday:
    print("Back to Pursuit")
case .tuesday:
    print("Enums lab is due")
case .wednesday:
    print("Professional skills")
case .thursday:
    print("Introduction to classes")
case .friday:
    print("Classes and Calculator labs are due")
case .saturday:
    print("What should I do today")
case .sunday:
    print("Maybe I shouold do some prep work for class tomorrow?")
//default: // will never be executed as all cases are handled above
}


//=======================================================================
//                  Iterating through an enum's cases
//=======================================================================

// Beverrages enum is conforming to the protocol CaseIterable,
// by conforming to CaseIterable we are able to get a count of all the cases in an enum
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

print("There are \(Beverage.allCases.count) beverages")

for beverage in Beverage.allCases {
    print("current beverage is \(beverage)")
}


//=======================================================================
//        associated values - adds more value (types) to a case
//=======================================================================

enum MTALine {
    case redLine(Int)
    case greenLine(trainName: Int)
    case purpleLine
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine(trainName: Character, startTime: Int, endTime: Int)
    case grayLine
}

let train = MTALine.yellowLine(trainName: "R", startTime: 8, endTime: 12)
let fiveTrain = MTALine.greenLine(trainName: 5)



func trainInformation(train: MTALine) {
    switch train {
    case .redLine:
        print("The 1, 2, 3 trains are ruunig on time")
    case .yellowLine(let trainName, let sTime, let eTime):
        print("\(trainName) runs from \(sTime)AM to \(eTime)AM")
    case .greenLine(let trainName):
        print("\(trainName) is the train you're using")
    default:
        print("All trains are running normally.")
    }
}

trainInformation(train: fiveTrain)


//=======================================================================
//                  declstinh mryhods insidec enum
//=======================================================================


enum ProgrammingLanguage {
    case swift
    case python
    case objectiveC
    case go
    case r
    case java
    case javascript
    
    // functions in custom types are called methods
    func info() {
        // we need to switch on an instance of ProgrammingLanguage
        switch self { // self if the instance that calls info()
        case .objectiveC:
            print("Last major update was in 2014")
        case .swift:
            print("Swift was introduced in 2014")
        case .java:
            print("Java is used to build android apps, also heavily used on Wall Street.")
        default:
            print("All languages are fun!!!!!!")
        }
    }
    
    func salaryInfo() {
        switch self {
        case .swift:
            print("Starting salary is $1 milion")
        case .javascript:
            print("Starting salary is $0.5 milion")
        default:
            print("You're waisting your time")
        }
    }
}

// swiftLangeage is an instance of ProgrammingLanguage
let swiftLanguage = ProgrammingLanguage.swift
swiftLanguage.info()

let javascript = ProgrammingLanguage.javascript
javascript.salaryInfo()



//=======================================================================
//                          raw values
//=======================================================================


enum Day: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

print(Day.monday.rawValue) // default starting case of an Int rawValue is 0



//=======================================================================
//           initializing an instance of an enum with a rawValue
//=======================================================================


let weekend = Day(rawValue: 10) ?? Day.monday

if let possibleDayOff = Day(rawValue: 6) {
    switch possibleDayOff {
    case .saturday:
        print("Great day for BBQ")
    case .sunday:
        print("Really want to go swimming today 🏝")
    default:
        print("just another day")
    }
} else {
    print("Not a valid day of the week")
}
