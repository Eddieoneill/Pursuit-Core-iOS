import UIKit

// Swift
/*
 Swift was introduced in 2014
 - swift is type safe language meening you can't mix  a declard data type with another e.g if var name = "Alex"
 
   you cannot update name = 10 // won't comlile type String is not an Int
 - moder language,
 - provides optionals that allows us to know whether a variable has a value or not
*/

var str = "Hello, playground"

// - comment

// Data Types: String, Int (Integer)

//=======================================================
//                      String
//=======================================================

// declared a variable fellowName of type String
// type Inferrence: implicit declaration of a varriable I
var fellowName = "David Lin"

print(fellowName) // Davit Lin

fellowName = "Chelsi Christmas"

print(fellowName) // Chelsi Christmas

fellowName = "34"

// DOES NOT COMPILE - CANNOT ADD DIFFERENT DATA TYPES
//let newString = "34" + 12

// concatenation - adding together
let fullName = "Alex" + " Paul"

// using String Interpo;atopm we are printing fullName's descrition
print("Person's full name is \(fullName)")

// Type Annotation - explicity writing the data type using : (colon)
var cohort: String = "iOS 6.3"

let lowercaseName = "alex"
let uppercaseNames = "Alex"

let stringResult = lowercaseName == uppercaseNames

let alphabeticalOrder = "Kelyby" < "Lorraine"
print("alphabeticalOrder result \(alphabeticalOrder)")
//=======================================================
//                      Character
//=======================================================

var alphabet: Character = "c"

// mutating cohort
// var is mutable - meaning can be changed
cohort = "iOS 7.0"


//=======================================================
//                      Int
//=======================================================

// declared variable age and initialized value to 32
var ageOfFellows = 32

var futureAge = ageOfFellows + 8

futureAge

// String interpolation is embedding a variable into a String using \(variavle name) syntax as seen belo
print("Age of fellow 8 years from now is \(futureAge)")

// integer division truncates decimals (removes them)
let integerDivision = 16/3
print("integer division is \(integerDivision)")


//=======================================================
//                   Division by 0
//=======================================================

// 89 / 0 DOES NOT COMPILE

//=======================================================
//                      Double
//=======================================================

var balance = 100005.9

balance = balance + 85_000

print(balance)


// floating point division keeps decimals

let floatingPointDivision = 16.0 / 3.0
print("floating point division is \(floatingPointDivision)")


//=======================================================
//                 Float vs Double
// Float holds 32-bit vs 64-bit of a Double
//=======================================================
let floatNum: Float = 67.990776788943
let doubleNum = 67.990776788943
print("float is \(floatNum) and double is \(doubleNum)")

// DOES NOT COMPILE - CANNOT ADD A FLOAT WITH A DOUBLE
//let accountBalance = floatNum + doubleNum

//here we are casting (converting) a Float to a Double
let accountBalance = Double(floatNum) + doubleNum

print("account balance is now \(accountBalance)")



//=======================================================
//              Short hand arithmetic
//=======================================================
balance -= 180000

print(balance)



//=======================================================
//         Boolean - Bool, Comparison Operator
//=======================================================

var result = 70 < 100

print(result)

var otherResult = result && true

print(otherResult)

//=======================================================
//               Arithmetic operators
//=======================================================


//=======================================================
//  THIS DOES NOT COMPLE - let is immuatable - constant
//=======================================================

//let salary = 20000
//salary *= 2
//print(salary)

var salary = 20000
salary *= 2
// This line above is the same as salary = salary * 2
print(salary)

var marathonTime = 600 // 6 hours
marathonTime /= 2
print(marathonTime) // 300



//=======================================================
//         Modulo operator or Remeinder operator
//=======================================================
var modResult = 16 % 3
print(modResult)

var even = 12 % 6
print(even)


//=======================================================
//                      Constants
//=======================================================

let pi = 3.14
