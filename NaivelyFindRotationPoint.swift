import Foundation

// Finds first occurrence in array of word starting with letter "a"

func naivelyFindRotation(within array: [String]) { 
	
	for index in 0..<array.count {
		
		let eachWord = array[index]
		
		if eachWord[eachWord.startIndex] == "a" {
			print(index)
		}	
	}
}

let testArray = ["x", "t", "u", "v", "a", "b", "c", "d"]
naivelyFindRotation(within: testArray)
