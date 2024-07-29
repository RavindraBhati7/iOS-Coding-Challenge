import UIKit

//Method 1. Using CharacterSet
let stringWithDigit = "123456789"
let stringWithOutDigit = "Ravindra"

func containStringOnly(input: String) -> Bool {
    let digitsCharactersSet = CharacterSet.decimalDigits
    return input.rangeOfCharacter(from: digitsCharactersSet.inverted) == nil
}

containStringOnly(input: stringWithDigit)
containStringOnly(input: stringWithOutDigit)

//Method :- 2. Using allSatisfy
func containDigitOnlyWithAllSatisfy(input: String) -> Bool {
    return input.allSatisfy { $0.isNumber }
}

containDigitOnlyWithAllSatisfy(input: stringWithDigit)
containDigitOnlyWithAllSatisfy(input: stringWithOutDigit)

//Method:- 3 Using Regular Expressions

func containDigitOnlyUsingRegularExpressions(input: String) -> Bool {
    let pattern = "^[0-9]+$"
    let regex = try! NSRegularExpression(pattern: pattern)
    let range = NSRange(location: 0, length: input.utf16.count)
    return regex.firstMatch(in: input, range: range) != nil
}

containDigitOnlyUsingRegularExpressions(input: stringWithDigit)
containDigitOnlyUsingRegularExpressions(input: stringWithOutDigit)

//Method:- 4 Using for Loop
func containDigitOnlyUsingForLoop(input: String) -> Bool {
    
    var isOnlyDigit: Bool = true
    
    for character in input {
        if !character.isNumber {
         isOnlyDigit = false
            break
        }
    }
    return isOnlyDigit
}
containDigitOnlyUsingForLoop(input: stringWithDigit)
containDigitOnlyUsingForLoop(input: stringWithOutDigit)
