import UIKit

let a = [1,2,3,4,5]


func rotateNuberNTimes(A: [Int], K: Int) -> [Int] {
    var result = A
    
    for _ in 0..<K {
      result = roteteSingleTime(A: result)
    }
    return result
}
func roteteSingleTime(A: [Int]) ->  [Int]{
    var newArray = Array<Int>(repeating: 0, count: A.count)
    for i in 0..<A.count - 1 {
        newArray[i+1] = A[i]
    }
    newArray[0] = A.last!
    return newArray
}
//
//print(rotateNuberNTimes(A: a, K: 1))
//print(rotateNuberNTimes(A: a, K: 2))
//print(rotateNuberNTimes(A: a, K: 3))

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result:[Int] = []
   
    for i in 0..<nums.count - 1 {
        if target == nums[i] + nums[i+1] {
            result.append(i)
            result.append(i+1)
            return result
        }
    }
    return result
}

var newArray = [1,2,3,3]
print(twoSum(newArray, 6))
