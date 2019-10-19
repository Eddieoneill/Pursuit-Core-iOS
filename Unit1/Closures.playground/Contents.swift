import UIKit

// Closures: is a block of code that can be called in our program sililar to a function. In fact a closure is a type of function. We will see recognize differences as we journey through this course

//returns void(empty)
// internal parameter name are used ub tge function body
// definition
// external parameter name is used by the caller, they will see the external name e.g printGreeting(name: "Bob")

// default parameter value will set on age is 21 in case the caller of our function does not provide age argument we will default to showing 21
// set default value on the data type that we are interested in, e.g age: Int = 21
func printGreeting(_ name: String, _ age: Int = 21) {
    // code
    print("Good morning \(name), welcome to iOS 6.3, your age is \(age)")
}

// call function
printGreeting("Alex")

print("Good Friday morning", terminator: "🥳") // default newline character for terminator "\n"
print()


//========================================================================
//                          closure syntax
//========================================================================

/*
 { (parameters) -> (return type) in
    // code here
 }
 */

// closure:
// - can be passed as function parameters
// - can be aassigned into a variable or constant
// - can be returned from a function

// greeting is a closure, does not have paramerters, does not return a value, returns Void (nothing)
let greeting = {
    print("Welcom to closures.")
}

greeting()

// closure that takes parameters and returns a value
let square = { (num: Int) -> (Int) in
    return num * num
}
square(10)
//^
//| both does give you back the same output
//v
// refactoring square closure above to make use of shorthand closure syntax and shorthand argument names $ 0 is the first parameter, here we ONLY have one parameter, if you have e.g wto parameters it would be $0 followed by $1 and so on
let squareShorthandSyntax: (Int) -> (Int) = { $0 * $0 } // $0 is only used in closure
squareShorthandSyntax(25)

// practoce, create add, subtract, multiply and divide using shorthand closure syntax and argument names

let add: (Int, Int) -> (Int) = { $0 + $1 }
let subtract: (Int, Int) -> (Int) = { $0 - $1 }
let multiply: (Int, Int) -> (Int) = { $0 * $1 }
let divide: (Int, Int) -> (Int) = { $0 / $1 }


divide(4,2)


//========================================================================
//                  closures as function parameters
// closures are "first class citizens" meaning we can pass closures into
// function as parameters similar as we do with variables in function,
// we can also return a closure
//========================================================================

// the name of the closure could be anyname, here we are simply using the word "closure" but it could be "action", "myClosure"........
func helloGreeting(closure: (String) -> ()) {
    closure("closure") // value was captured by the closure
    print("I'll run after the closure")
}

helloGreeting { (name) in
    print("Hello, \(name) it's Friday🚀")
}

func printClosure(action: () -> ()) {
    action()
}

let action = {
    print("inside printClosure trailing closure")
}
printClosure(action: action)


//========================================================================
//            use some built-in higher order functions (closures)
// - map {.....} - transforms a value. e.g 4 * 4 = 16  returns an array
// - filter {....} - filters values based on a condition return an array of collection
// - reduce(0, +) - takes an initial value, e.g and a closure e.g + (addition) and combines all values and returns the result
// - compactMap {.....} - returns non-nil values
// - sorted { > } - you provide a sorting closure and it returns base on the sorting algorithm
// - forEach {......} - similar to the for-in loop
//========================================================================


// given an array of integers return an array where each value is squeared
// input: [1, 2, 3, 4, 5, 6]
// output: [1, 4, 9, 16, 25, 36]
let list1 = [1, 2, 3, 4, 5, 6]
func returnSqueares(arr: [Int]) -> [Int] {
    var square = [Int]()
    
    for num in arr {
        square.append(num * num)
    }
    
    return square
}
print(returnSqueares(arr: list1))
//========================================================================
// using map
//========================================================================

let usingMapResults = list1.map { $0 * $0 }

print(usingMapResults)

//========================================================================
// using filter
//========================================================================
// given an array of fellows return only fellows where their names begin with "a" case-insensitive
// input: ["George", "Tom", "Ahad", "James", "Ameni"]
// output: ["Ahad", "Ameni"]
let list2 = ["George", "Tom", "Ahad", "James", "Ameni"]
let filterResults = list2.filter { $0.lowercased().hasPrefix("a") }

print(filterResults)

//========================================================================
// using reduce
//========================================================================
// given an array of integers return the sum
// input: [10, -10, 50, 20]
// output: 70
let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0, +)
print(reducedResults)

//========================================================================
// using compactMap
//========================================================================
// given an optional array of integers return ONLY valid integers
// input: [nil, 56, 12, -89, nil, nil, 0, 6]
// output: [56, 12, -89, 0, 6]
let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
let compactMapResult = list4.compactMap { $0 }
print(compactMapResult)
