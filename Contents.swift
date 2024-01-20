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

print(rotateNuberNTimes(A: a, K: 1))
print(rotateNuberNTimes(A: a, K: 2))
print(rotateNuberNTimes(A: a, K: 3))
