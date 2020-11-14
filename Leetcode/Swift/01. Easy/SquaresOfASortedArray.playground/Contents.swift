//Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.
//
//
///Example 1:
///
///Input: [-4,-1,0,3,10]
///Output: [0,1,9,16,100]
///Example 2:
///
///Input: [-7,-3,2,3,11]
///Output: [4,9,9,49,121]
///
///
///Note:
///
///1 <= A.length <= 10000
///-10000 <= A[i] <= 10000
///A is sorted in non-decreasing order.

func sortedSquares(_ A: [Int]) -> [Int] {
    let lenth = A.endIndex
    var leftIndex = 0
    var rightIndex = lenth - 1
    var insertIndex = lenth - 1
    var resultArray = Array(repeating: 0, count: lenth)

    while insertIndex >= 0 {
        let leftVal = A[leftIndex] * A[leftIndex]
        let rightVal = A[rightIndex] * A[rightIndex]
        if (leftVal < rightVal) {
            resultArray[insertIndex] = rightVal
            rightIndex -= 1
        } else {
            resultArray[insertIndex] = leftVal
            leftIndex += 1
        }
        insertIndex -= 1
    }
    return resultArray
}

sortedSquares([-4,-1,0,3,10])
sortedSquares([-7,-3,2,3,11])
