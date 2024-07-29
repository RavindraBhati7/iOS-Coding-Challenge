import UIKit
import Foundation

// Example Usage
let allAlphabetsString = "The quick brown fox jumps over the lazy dog"
let anotherString = "Hello, World!"

let alphabet = "abcdefghijklmnopqrstuvwxyz"

//Using Swift's Set
func containsAllAlphabetCharactersUsingSet(_ input: String) -> Bool {
    let alphabetSet: Set<Character> = Set(alphabet)
    let inputSet: Set<Character> = Set(input.lowercased())
    return alphabetSet.isSubset(of: inputSet)
}


containsAllAlphabetCharactersUsingSet(allAlphabetsString)
containsAllAlphabetCharactersUsingSet(anotherString)

//Using Swift's Dictionary
func containsAllAlphabetCharactersUsingDictionary(_ input: String) -> Bool {

    var letterSeen = [Character: Bool]()
    
    for letter in alphabet {
        letterSeen[letter] = false
    }
    
    for char in input.lowercased() {
        if letterSeen.keys.contains(char) {
            letterSeen[char]  = true
        }
    }
    return !letterSeen.values.contains(false)
}
 
print(containsAllAlphabetCharactersUsingDictionary(allAlphabetsString))
print(containsAllAlphabetCharactersUsingDictionary(anotherString))

//Using Swift's reduce

func containsAllAlphabetCharactersUsingReduce(_ input: String) -> Bool {
    let inputSet = Set(input.lowercased())
    return alphabet.allSatisfy { inputSet.contains($0)}
}


print(containsAllAlphabetCharactersUsingReduce(allAlphabetsString))  // Output: true
print(containsAllAlphabetCharactersUsingReduce(anotherString))  // Output: true


//Using a for Loop to Track Alphabet Characters

func containsAllAlphabetCharactersUsingFor(_ input: String) -> Bool {
    
    var alphabetSet: Set<Character> = Set(alphabet)
    
    for char in input.lowercased() {
        if alphabetSet.contains(char) {
            alphabetSet.remove(char)
        }
        
        if alphabetSet.isEmpty {
            return true
        }
        
    }
    return alphabetSet.isEmpty
}

print(containsAllAlphabetCharactersUsingFor(anotherString))  // Output: false
