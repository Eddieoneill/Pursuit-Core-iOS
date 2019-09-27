import UIKit

// Optional - used to indicate that a value MAY exist
//              two possible outcome
//              outcome 1: there is a value and it can be used as normal
//              outcome 2: there isn't a value, in Swift terms it's nil
/*
 String?
 Bool?
 Int?
 Double?
 Character?
 */

/*
 Ways to unwrap an Optional:
 1. forced unwrapping e.g Int(response)!
 2. nil-coelscing e.g Int(response) ?? 21
 3. optional binding e.g if let bindingValue = optionalValue {..we ca use binding value here...} else {.....}
 4. implicit unwrapping e.g var name: String!
 */

// attemping to to cast a String to an Int using this e.g Int("45")

let floatValue: Float = 45.9
let doubleValue = 10.3
let result = Double(floatValue) + doubleValue //Double(Float Value)

let response = "27"

//var age = Int(response)! - force unwrapping
var age = Int(response) ?? 21 // nil coelscing

if let yourAge = Int(response) {
    print("the age you entered is \(yourAge)")
} else {
    print("the response value is nil")
}

age + 10
