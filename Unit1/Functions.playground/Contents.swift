import UIKit

// Functions: a block of code that enables us to call it anywhere in our project or file

/*
 Vocabulary
 - function
 - argument
 - parameters, internal, external
 - input
 - out put
 - function definition - description of the function
 - calling a function or invoking a function, execute function
 */

//==========================================================================
//                            function syntax
//==========================================================================

// function definition
func myFirstFunction() { // no parameters
    print("Happy hunp days 🐫")
}

// call or invoke or execute our myFirstFunction
myFirstFunction() // no arguments

// number is an external parameter name
// x is an internal parameter name
// Int is the data type of the function's input
// Int is also the output of this functioon
// return type syntax is ->
func doubleNumber(number x: Int) -> Int {
    let result = x * 2
    return result
}

let resultOfCalculation = doubleNumber(number: 10) // function takes one argument of type Int, output returned is of type Int
print(resultOfCalculation)

// write a function that adds two a number, then triples it e.g (10 + 2) * 3
// input: 10
// output: 36

func triplesNumer(num: Int) -> Int {
    return (num + 2) * 3
}

triplesNumer(num: 10)

// write a function that adds an exclaimation mark ! to a String
// input: Hello
// output: Hello!

func exsited(yourFeeling: String) -> String {
    return yourFeeling + "!"
}

print(exsited(yourFeeling: "Hello"))


//==========================================================================
//                      optional types on funcitons
//==========================================================================

func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? {
    var profileComplete: Bool? = false
    
    if let _ = age, let _ = employmentStatus {
        profileComplete = true
    }
    
    return profileComplete
}


if let profileComplete = githubProfile(age: nil, employmentStatus: nil) {
    if profileComplete == true {
        print("profile complete")
    } else {
        print("profile incomplete.")
    }
}
