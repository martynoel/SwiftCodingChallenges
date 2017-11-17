import Foundation

public func findRotationPoint(with array: [String]) -> Int {
    
    let firstWord = array[0]
    
    var lowerBound = 0
    var upperBound = array.count - 1
    
    while lowerBound < upperBound {
        
        let middleIndex = (upperBound - lowerBound) / 2
        
        // If middle index is greater than or equal to first word, 
        // rotation point is to the right, because the "lesser" words
        // will be to the right in this example
        if array[middleIndex] >= firstWord {
            lowerBound = middleIndex
        } 
        
        // Otherwise, the middle index is less than the first word, 
        // which means we have ventured too far. So we go left
        else {
            upperBound = middleIndex
        }
        
        // If the lower and upper bounds are next to each other, we've found 
        // our word! Break out of the while loop to return the index we have :)
        if (lowerBound + 1) == upperBound {
            break
        }
    }
    
    // Upper bound will be the new rotation point
    print(upperBound)
    return upperBound
}

let testArray1 = ["x", "t", "u", "v", "a", "b", "c", "d"]
let rotationPoint1 = findRotationPoint(with: testArray1)
print("Rotation point should be at index 4")
print("Rotation point at testArray1 is at index \(rotationPoint1)")

let testArray2 = ["a", "b", "c", "d", "e"]
let rotationPoint2 = findRotationPoint(with: testArray2)
print("Rotation point should be at index 1")
print("Rotation point at testArray2 is at index \(rotationPoint2)")
