import UIKit
import Foundation

//Method 1:-


func countVowelAndConsonants(in input: String) -> (vowel: Int, consonants: Int) {
    
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        
    var vowelCount = 0
    var consonantCount = 0
    
    for character in input {
        
        if character.isLetter {
            if vowels.contains(character) {
                vowelCount += 1
            } else {
                consonantCount += 1
            }
        }
    }
    return (vowelCount, consonantCount)
}

// Example usage:
let inputString = "Hello, World!"
let counts = countVowelAndConsonants(in: inputString)
print("Vowels: \(counts.vowel), Consonants: \(counts.consonants)")


//Method: 2

func countVowelsAndConsonantWithFilter(in input: String) -> (vowelCount: Int, consonantCount: Int) {
    
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    let filtered = input.filter {$0.isLetter}
    let vowelCount = filtered.filter { vowels.contains($0)}.count
    let consonantCount = filtered.count - vowelCount
    
    return (vowelCount, consonantCount)
}

//Method 3

func countVowelsAndConsonantsUsingFor(input: String) -> (vowelCount: Int, consonantCount: Int) {
    
    let vowels = "aeiouAEIOU"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for character in input {
        
        if character.isLetter {
            
            if vowels.contains(character) {
                vowelCount += 1
            } else {
                consonantCount += 1
            }
        }
    }
    return (vowelCount, consonantCount)
}
