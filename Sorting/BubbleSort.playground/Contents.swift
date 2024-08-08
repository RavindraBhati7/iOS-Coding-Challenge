import UIKit


//Bubble Sort: Simple but inefficient for large lists. Swaps adjacent elements if they are in the wrong order.
/*
 1. Time Complexity: O(n²)
 2. Space Complexity: O(1)
 */

// MARK: Method 1 - Basic Bubble Sort
func bubbleSortUsingFor(_ array: inout [Int]) {
    
    let n = array.count
    
    for i in 0..<n {
        
        for j in 0..<n - i - 1 {
            
            if array[j] > array [j + 1] {
                array.swapAt(j, j + 1)
            }
        }
    }
}


var array = [64, 34, 25, 12, 22, 11, 90]
bubbleSortUsingFor(&array)
print(array)


// MARK: -  Method 2 - Basic Bubble Sort using repeat and for
func basicBubbleSort(_ array: inout [Int]) {
    
    let n = array.count
    var swapped: Bool
    
    repeat {
        swapped = false
        
        for i in 1..<n {
            if array[i - 1] > array[i] {
                array.swapAt(i - 1, i)
                swapped = true
            }
        }
    } while swapped
}


var unsortedArray = [1,4,5,3,7,9,6,8]
basicBubbleSort(&unsortedArray)
print(unsortedArray)

// MARK: Method 3 - Bubble Sort with a Separate Function for Swapping
func swap(_ array : inout [Int], firstElement i : Int, secondElement j: Int) {
    let temp = array[i]
    array[i] = array[j]
    array[j] = temp
}

func bubbleSortWithSwap(_ array: inout [Int]) {
    let n = array.count
    var swapped = false
    
    repeat {
        for i in 0..<n {
            
            if array[i - 1] > array[i] {
                swap(&array, firstElement: i - 1, secondElement: i)
                swapped = true
            }
        }
    } while  swapped
}

bubbleSortUsingFor(&unsortedArray)
print(unsortedArray)


// MARK: Method 4 - Recursive Bubble Sort for Integers
func recursiveBubbleSort(_ array: inout [Int], _ n: Int? = nil) {
    
    let n = n ?? array.count
    
    if n <= 1 { return }
    
    for i in 1..<n {
        if array[i - 1] > array[i] {
            array.swapAt(i - 1, i)
        }
    }
    recursiveBubbleSort(&array, n - 1)
}


recursiveBubbleSort(&unsortedArray)
print(unsortedArray)


// MARK: Method 5 - Optimized Bubble Sort with Early Exit

func optimizedBubbleSort<T: Comparable>(_ array: inout [T]) {
    
    let n = array.count
    var lastUnsortedIndex = n - 1
    
    while lastUnsortedIndex > 0 {
        
        var newLastUnsortedIndex = 0
        
        for i in 0..<lastUnsortedIndex {
            
            if array[i] > array[i + 1] {
                array.swapAt(i, i + 1)
                newLastUnsortedIndex = i
            }
        }
        lastUnsortedIndex = newLastUnsortedIndex
    }
}


optimizedBubbleSort(&unsortedArray)
print(unsortedArray)
