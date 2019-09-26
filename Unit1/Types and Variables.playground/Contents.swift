import UIKit

var str = "Hello, playground"

// - comment

// Data Types: String, Int (Integer)

//=======================================================
//                      String
//=======================================================

// declared a variable fellowName of type String
// type Inferrence: implicit declaration of a varriable I
var fellowName = "David Lin"

// Type Annotation - explicity writing the data type using : (colon)
var cohort: String = "iOS 6.3"

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

//=======================================================
//                      Double
//=======================================================

var balance = 100005.9

balance = balance + 85_000

print(balance)


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


