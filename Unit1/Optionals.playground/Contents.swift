import UIKit

// Optionals: is a type that represents two possibilities eather we have a value or we do not have a value (nil).

// Swift data types support optionals e.g:
/*
 String
 */

// ==================================================================================================
//                                      Introduction of Optionals
// ==================================================================================================

var name: String = "Alex"
print(name)

var age: Int? = 21 // opitonal Int?
print(age) // nil - doesn't have a value

var num = Int("It's Monday") // opitonal Int?


// ==================================================================================================
//                                      Ways to unwrap Optionals
//      1. Forced Unwrapping using an excaimation mark or some programmers refer to it as banging !
//      2. Nil-coalescing using two question marks ?? followed by a default value that we provide
//      3. Optopma; binding using if let, where a value is assigned the existing if one is available.
//      4. Imkplicit unwrapping e.g var name: String!
// ==================================================================================================



// ==================================================================================================
//                                         Forced Unwrapping
// ==================================================================================================

let decadeFromNow = age! + 10 // Cannot add Int? + Int
print(decadeFromNow)

// to be used sparingly ONLY when you developer is GUARANTEED a valueat runtime


// ==================================================================================================
//                                           Nil-Coalescing
// ==================================================================================================


var temerature: Int? // degrees

let validTemprerature = temerature ?? 67 // 67 is the default value in the case temerature is nil
print("Temperature is \(validTemprerature)")


var cohort: Int?

var nextYearCohort = (cohort ?? -1)

if nextYearCohort == -1 {
    print("something went wrong with the appication")
} else {
    print("everythign went well")
}

print("Pursuit next cohort will be \(nextYearCohort)")



// ==================================================================================================
//                              Optional Binding: if let, while let
// ==================================================================================================

var wage: Int? = 40_000 // dollars
var year: Int? // nil by default if a value is not provided

// 1. wage within the if is still optional
// 2. not idiomatic swift (swifty)
if wage != nil {/*.....*/}


// validWage is 40_000
// validYear is nil
// if let unwrappes the wage variable, if it does have a value then that value gets assigned to the bindedValue constant
if let validWage = wage, let validYear = year {
        // we only enter the if let block {.....} if wage is NOT nil, in other words ONLY if wage has a value
    
        // if wage has a value the if let is TRUE
        // if wage is nil the if let is FALSE
    print("You entered \(validWage) as your wage in the current year of \(validYear)")
} else { // else condition is false, or wage is nil
    print("Values are unavailable")
}

// string interpolation
var modelYear: Int?
print("model year is \(modelYear ?? 1959)")


// ==================================================================================================
//                                  testing optionals for equality
// ==================================================================================================

var someValue: Int? = 7
if someValue == 7 {
    print("\(String(describing: someValue)) is equal to 7")
}


// ==================================================================================================
//                              looping through  and optional array
// ==================================================================================================

let numbers: [Int?]
numbers = [4, 9, nil, 10, 20, nil]

// add ONLY valid integers
var sumUnwrappedUsingOptionalBinding = 0
var sumUsingNilCoalescing = 0
for currentNumber in numbers {
    // optional binding to unwrap
    if let validNum = currentNumber { // optional binding to unwrap the current num
        sumUnwrappedUsingOptionalBinding += validNum
    }
    
    // optional nilcoalescing to unwrap
    sumUsingNilCoalescing += currentNumber ?? 0
}

print("the sum of numbers using optional binding \(sumUnwrappedUsingOptionalBinding)")
print("the sum of numbers using nil-coalescing \(sumUsingNilCoalescing)")

var isAbscent: Bool? = false
if let unwrappedValue = isAbscent {
    print(unwrappedValue)
} else {
    print("is abcent does not have a value")
}
