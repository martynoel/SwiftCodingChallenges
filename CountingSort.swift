import Foundation

func sort(using unsortedArray: [Int], maxValue: Int) -> [Int] {
    
    // Make an empty array of size maxValue + 1 and fill it with 0's
	// This is our "count" array 
    var countArray = Array(repeating: 0, count: maxValue + 1)
    
    // Iterate through unsortedArray
	// Tally up how many times each element appears and put that at that element's index in countArray
    for element in unsortedArray {
        countArray[element] += 1
    }
    
    // Create sortedArray and populate it
    var sortedArray = Array(repeating: 0, count: unsortedArray.count)
    var currentSortedIndex = 0
    
    // For each element in countArray
    for (element, count) in countArray.enumerated() {
        
        for _ in 0..<count {
            
			// Add number of times each element occurs to sortedArray
            sortedArray[currentSortedIndex] = element
			
			// Increment currentSortedIndex 
			// IMPORTANT bc you need to sort duplicate values
            currentSortedIndex += 1
        }
    }
    
    return sortedArray
}

let testArray = [69, 57, 41, 70, 33, 98]
let maxInt = 100

let test = sort(using: testArray, maxValue: maxInt)

print(test)
