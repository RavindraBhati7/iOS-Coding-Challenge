import UIKit

//Higher Order Functions

//1. Map:- The map function transforms each element of an array using a given function and returns a new array containing the transformed elements.

//Write a table of 2 using map

let numbers = 1...10

let tableOfTwo = numbers.map { $0 * 2}

print(tableOfTwo)


//2. CompactMap (Swift 4.1 and later): The compactMap function transforms the elements of an array using a given closure and removes any resulting nil values.

let values = ["1", "2", "4", "5", "6", "7", "Abc"]

let intValue = values.compactMap { Int($0)}
let stringValue = values.compactMap { String($0)}
print(intValue)
print(stringValue)


//3. Filter: The filter function creates a new array with the elements that satisfy a given condition.

let filterEven = numbers.filter { $0 % 2 == 0 }
print(filterEven)


//4. Reduce: The reduce function combines all elements of an array into a. single value, by applying a combining closure.

let sum = numbers.reduce(0, +)
print(sum)


//5. Sort: The sorted function sorts the elements of an array using a given sorting closure.

let unsortedNumbers = [6, 3, 4, 1, 8, 5]
let sortedNumbers = unsortedNumbers.sorted { $0 < $1 }
print(sortedNumbers)
