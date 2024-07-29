import UIKit

var greeting = "Hello, playground"

//Method :- 1. Using reversed() with String Initialization.
//This is the most straightforward method, but it creates a new string rather than modifying the original one in place.

let reversedString = String(greeting.reversed())
print(reversedString) // Output:- dnuorgyalp ,olleH



//Method 2. Using Mutable Array of Characters
//You can convert the string to an array of characters, reverse the array in place, and then create a new string from the reversed array.

var characterArray = Array(greeting)
characterArray.reverse()
let reversedStringArray = String(characterArray)
print(reversedStringArray)   // Output:- dnuorgyalp ,olleH




//Method 3. Using a Manual Swap Method
var originalString = "Hello String!"
var charArray = Array(originalString)
var left = 0
var right = charArray.count - 1

while left < right {
    
    charArray.swapAt(left, right)
    left += 1
    right -= 1
}

let reversedSwapString = String(charArray)
print(reversedSwapString) // Output:- !gnirtS olleH



// Method 4. Using Custom String Extension

extension String {
    func reversedInPlace() -> String {
        return String(self.reversed())
    }
}

let reversedInPlace = originalString.reversedInPlace()
print(reversedInPlace)  // Output: !dlroW ,olleH


//Method 5:- Reversing a String Using a for Loop

func reversingString(originalString: String) -> String {
    var charArray = Array(originalString)
    let count = charArray.count
    
    for i in 0..<count/2 {
        
        let oppositeIndex = count - 1 - i
        charArray.swapAt(i, oppositeIndex)
    }
    return String(charArray)
}

let reversedAString = reversingString(originalString: "Kanha")
print(reversedAString)  // Output: ahnaK
