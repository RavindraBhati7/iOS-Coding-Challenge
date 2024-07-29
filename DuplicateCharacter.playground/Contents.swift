import UIKit
import Foundation

let testString = "programming"

// Method 1. Using Higher-Order Functions

func duplicateUsingHigherOrderFunction(_ input: String) {
    let characterCounts = Dictionary(input.map { ($0, 1)}, uniquingKeysWith: +)
    let duplicates = characterCounts.filter{ $0.value > 1}
    for (char, count) in duplicates {
        print("Character \(char) is duplicated \(count) times")
    }
}

duplicateUsingHigherOrderFunction(testString)


//Method 2. Using Tuples

func duplicatesUsingTuples(_ input: String) {
    var counts = [Character: Int]()
    
    for char in input {
        
        if let currentCount = counts[char] {
            counts[char] = currentCount + 1
        } else {
            counts[char] = 1
        }
    }
    for (char, count) in counts where count > 1 {
        print("Characters \(char) is duplicated \(count) times ")
    }
}

let tupleTestString = "Swimming"
duplicatesUsingTuples(tupleTestString)


//Method: 3. Using Enum and Switch

enum CharacterCount {
    case unique
    case duplicate(Int)
    
    var description: String {
        switch self {
         
        case .unique:
            return "Unique Characters "
        case .duplicate(let count):
            return "Duplicates \(count) times "
        }
    }
}

func duplicatesUsingEnumAndSwitch(_ input: String) {
    
    var counts = [Character: CharacterCount]()
    
    for char in input {
        
        if let existing = counts[char] {
            switch existing {
                
            case .unique:
                counts[char] = .duplicate(2)
            case .duplicate(let count):
                counts[char] = .duplicate(count + 1)
            }
        } else {
            counts[char] = .unique
        }
    }
    
    for (char, count) in counts {
        if case .duplicate(let num) = count, num > 1 {
            print("Characters \(char) is \(count.description)")
        }
    }
}



let testEnumAndSwitch = "Swizzling"
duplicatesUsingEnumAndSwitch(testEnumAndSwitch)


//Method 4: - Using Switch Statements

func duplicatedUsingSwitch(_ input: String) {
    
    var counts = [Character: Int]()
    
    for char in input {
        counts[char, default: 0] += 1
    }
    for (char, count) in counts {
        switch count {
        case 1:
            break  // unique characters so no Action
        default:
         print("Characters \(char) is duplicated \(count) times")
        }
    }
}

duplicatedUsingSwitch("Common")

//Method 5. Using a for Loop

func duplicateUsingForLoop(_ input: String) {
    
    var counts = [Character: Int]()

    // Count occurrences of each character
    for char in input {
        counts[char, default: 0] += 1
    }
    
    //duplicate characters
    for (char, count) in counts {
        if count > 1 {
            print("Characters \(char) is duplicated \(count) times ")
        }
    }
}

duplicateUsingForLoop("Ravindra")

//Method6. Using NSCountedSet (Foundation Framework)

func duplicateUsingNSCountedSet(_ input: String) {
    
    let countedSet = NSCountedSet(array: Array(input))
    
    for char in countedSet {
        let count = countedSet.count(for: char)
        if count > 1 {
            print("Character \(char) is duplicated \(count) times")
        }
    }
}

duplicateUsingNSCountedSet("India")


