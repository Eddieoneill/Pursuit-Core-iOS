import UIKit

// Arrays - an array is an ordered collection of items

//=================================================
//              initializing array
//=================================================

// using Type Annotation we are declaring ana array of type String
var bucketList: [String]

bucketList = ["France", "Austrailia", "South Africa", "Aruba", "Cozumel", "Brazil", "Japan"]

print(bucketList)

// count the items in the aarray
print("there are \(bucketList.count) countries on my bucket list")

var threeDoubles = Array(repeating: 0.0, count: 3)

print(threeDoubles) // [0.0, 0.0, 0.0]


//=================================================
//        accessing value inside an array
//=================================================

var juan = (name: "Juan", cohort: 6.3, hobby: "gaming")
var shaniya = (name: "shaniya", cohort: 6.3, hobby: "music yeah")

var fellows = [juan, shaniya]

// array of planets
// declaring an array using an array literal
var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
var dwarfPlanets = ["Pluto"]

// accessing the "Earth" planet using subscripting [2]
let thirdRockFromTheSun = planets[2]
print(" Our home planet is \(thirdRockFromTheSun)")

let lastPlanet = planets[planets.count - 1]
print("the last planet of our solar system is \(lastPlanet)")

// Print the second to the last planet
let secondToLast = planets[planets.count - 2]
print("secont to last planet is \(secondToLast)")

//print the middle planet
let theMiddlePlanet = planets[planets.count / 2]
print("Our middle planet is \(theMiddlePlanet)")


//=================================================
//        properties and methods on arrays
//=================================================

// property - a variable on a object e.g planets.count
// method - a function that runs on an instance of an object e.g planets.append(:_)

// first
// if planet.first is NOT nil assign the value to the firstPlanet constant

// think about planets.first as being a condition of true or false where if first does not exist the condition is false, if first exist then the condition is true

// however long term we will come to realize that planets.first implies that either we have a valid value of String or not in the case it's nil e.g planets array is empty

// here we are using optional binding to unwrap the fisrt? value

//BOTH WAY OF DECLARING THE ARRYA BELOW ARE VALID

// USING TYPE ANNOTATION
// var programmingLanguages: [String] = []

// USING TYPE INFERENCE
var programmingLanguages = [String]()

//using isEmpty property on an array
// isEmpty is preferable over using .count
if programmingLanguages.isEmpty {
    print("we need to start programming")
} else {
    print("programming is fundamental")
}

if programmingLanguages.count == 0 {
    print("what's are you waiting for????")
}

//=================================================
//        append to an array - add to an array
//=================================================

programmingLanguages.append("Swift")
if let firstProgrammingLanguage = programmingLanguages.first {
    // if we have a valid value of String
    // we enter this if block {.....}
    print("first programming language is \(firstProgrammingLanguage)")
} else {
    print("looks like you haven't starting using any programming languages")
}

//=================================================
//     remove(at:) removing items from an array
//=================================================

print("there are \(planets.count) plannets")

planets.append("Pluto")

print("there are \(planets.count) plannets")

print(planets)

let removedPlanets = planets.remove(at: planets.count - 1)

print("ooks like \(removedPlanets) was ditched again 😞")

print("there are \(planets.count) plannets")


//=================================================
//        remove all elements in an array
//        using removeAll()
//=================================================
// planets.removeAll() // 0 planets

print("there are \(planets.count) planets in the solar system")

let randomPlanet = planets.randomElement() ?? "PlanetX" // default value is "Earth"
print("random planet is \(randomPlanet)")

// popLast()

let oopsAnotherPlanetsIsGone = planets.popLast()


//=================================================
//        remove all elements in an array
//=================================================
var classRoom1 = ["Maigrett", "Gregg", "Adam"]
var classRoom2 = ["Aaron", "Jack", "Vic"]

// adding or concatenating arrays together
// NOTE: when adding arrays together they need to be of the same data type

// DOES NOT COMPILE, CANNOT ADD DIFFERNT ARRAY TYPES TOGETHER
// classRoom1 += [56, 89]

classRoom1 += classRoom2

print("class room 1 has \(classRoom1.count) of fellows")

//=================================================
//      iterating or looping through arrays
//=================================================
// method 1: interating through array using for-in loop without using an index

planets.append("Neptune")

for planet in planets {
    print("planet name is \(planet)")
}

// method 2: interating using enumerated() to gain access to the current index in the for-in loop
for (index, planet) in planets.enumerated() {
    print("\(planet) \(index + 1)")
}

// method 3: using a range
for index in 0..<planets.count {
    print(planets[index])
}


//=================================================
//                Array Part-2
//=================================================

var musicalArtists = ["Bob Marley", "Burning Spear", "John Mayyer", "Steel Pulse", "Mos Def", "The Beatles", "Norah Jones", "Lauryn Hill"]
let artist = musicalArtists[2]
print("currently playing \(artist) on Spotify")

// array slice
// a view of the array
let reggaeStarts = musicalArtists[1...3]
print("Some Reggae superstars are \(reggaeStarts)")


// modify the value of an array using subscripting
musicalArtists[1] += " (The Reggae Legend)"
print(musicalArtists)

//replace an element using subscript
musicalArtists[musicalArtists.count - 1] = "Prince"
print(musicalArtists)

for artist in musicalArtists {
    if artist == "John Mayyer" {
        print("Acoustic genius")
        break
    }
    print("Searching for John Mayyer...")
}

// tuple review
let artist1 = (name: "John Mayer", genre: "Pop")
let artist2 = (name: "Beyonce", genre: "Pop, Country, Hip-Hop, Soca, Afro-beat")
let artists = [artist1, artist2]

for artist in artists {
    print("artist name is \(artist.name)")
}



//=================================================
//           multi-dimensional arryays
//=================================================

let matrix = [[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]]

let exampleArr = ["Brendon", "Eddie"]

//count on multi-dimensional array
print("current count is \(matrix[0])")

//matrix is an array = also a muti-dimensional array
for arr in matrix {
    
    // each element in the matrix is an array
    for num in arr {
        print(num, terminator: " ")
    }
    print()
}

// using subscripting on a multi-dimensional array
let firstInnerArray = matrix[0]
print("first element in matrix array is \(firstInnerArray)")

// print out last element

// count of matrix is 3
// how to find last index in matrix array
// count - 1 => 2
// don't hard code it!!
let lastInnerArray = matrix[matrix.count - 1]
print("the last element in matrix is \(lastInnerArray)")


// compile-time errors
// runtim-errors
