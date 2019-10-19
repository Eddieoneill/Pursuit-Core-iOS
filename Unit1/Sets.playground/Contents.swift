import UIKit

// Sets: an unordered collection whose elements are unique

//=========================================================
//              initializing and populating a set
//=========================================================

// protocols: Hashable, Sequence, Collection

var accountNumber: Set<Int> = [] // use tyoe annotation
var accountNumber2 = Set<Int>()  // use set initialization

var accountNumber3: Set<Int> = [5234322, 421059381, 4912432] // using a literal collection

// heterogeneous array
var mixedArr: [Any] = [412421, "fmelmf", false]
for element in mixedArr {
    if let num = element as? Int { // typecasting - optional downcasting as?, forced downcasting as!
        print("num is \(num)")
    }
    if let str = element as? String {
        print("string is \(str)")
    }
    if let bool = element as? Bool {
        print("boolian is \(bool)")
    }
}


//=========================================================
//              accessing values in a set
//=========================================================

// isEmpty
if accountNumber.isEmpty {
    print("accountNumber is empty")
}

// count
print("there are \(accountNumber3.count) elements in accountNumber3")


//converting array to a set
// removes any duplicates from the array since elements in a set has to be unique
let colors = Set(["blue", "white", "red", "yellow", "white"])

print(colors)


//=========================================================
//        using contains to find an element in a set
//=========================================================

let fellows: Set<String> = ["Christian", "Gregg", "Maitree", "Joshua"]

for fellow in fellows {
    print(fellow)
}

if fellows.contains("Christian") {
    print("found fellow")
}



//=========================================================
//                performing set operations
//=========================================================

let a: Set<Int> = [1, 2, 3, 4, 5, 6]
let b: Set<Int> = [5, 6, 7, 8]

// intersection
let intersection = a.intersection(b).sorted() // ascending is the default order of sorted()
print(intersection) // [5, 6]

// symmetricDifference
let symmetricDifference = a.symmetricDifference(b).sorted()
print(symmetricDifference) // [1, 2, 3, 4, 7, 8]

// union
let union = a.union(b).sorted()
print(union) // [1, 2, 3, 4, 5, 6, 7, 8]

// subtracting
let subtrac = a.subtracting(b).sorted()
print(subtrac) // [1, 2, 3, 4]

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true
