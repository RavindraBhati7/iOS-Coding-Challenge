import UIKit


let inputString = "ROR"
let inputStringNotPalindrome = "iOS"

//Method:- 1

func isPalindrome(input: String) -> Bool {
    
    let cleanedString = input.lowercased().filter{$0.isLetter}
    let length = cleanedString.count
    let chars = Array(cleanedString)
    
    for i in 0..<length / 2 {
        if chars[i] != chars[length - i - 1]{
            return false
        }
    }
    return true
}


isPalindrome(input: inputString)
isPalindrome(input: inputStringNotPalindrome)

//Method 3:- Using Build - in Functions

func isPalindrome(_ inputString: String) -> Bool {
    let cleanedString = inputString.lowercased().filter{$0.isLetter}
    return cleanedString == String(cleanedString.reversed())
}

isPalindrome(inputString)
isPalindrome(inputStringNotPalindrome)

//Method 4:- Using String Reversal

func isPalindromeUsingReversal(input: String) -> Bool {
    return input == String(input.reversed())
    
}

isPalindromeUsingReversal(input: inputString)
isPalindromeUsingReversal(input: inputStringNotPalindrome)

//Method 5. Using Two-Pointer Technique

func isPalindromeUsingTwoPointer(input: String) -> Bool {
    let characters = Array(input)
    var left = 0
    var right = characters.count - 1
    
    while left < right {
        if characters[left]  != characters[right] {
            return false
        }
        left += 1
        right -= 1
        
    }
    return true
}
isPalindromeUsingTwoPointer(input: "racecar")
isPalindromeUsingTwoPointer(input: "racecar11")
