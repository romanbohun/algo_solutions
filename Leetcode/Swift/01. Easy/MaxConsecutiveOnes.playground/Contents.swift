//Given a binary array, find the maximum number of consecutive 1s in this array.
///
///Example 1:
///Input: [1,1,0,1,1,1]
///Output: 3
///Explanation: The first two digits or the last three digits are consecutive 1s.
///    The maximum number of consecutive 1s is 3.
///Note:
///
///The input array will only contain 0 and 1.
///The length of input array is a positive integer and will not exceed 10,000

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var result = 0
    var counter = 0
    for item in nums {
        if (item != 1) {
            counter = 0
        } else {
            counter += 1
        }
        result = result < counter ? counter : result
    }

    return result
}

findMaxConsecutiveOnes([1,1,0,1,1,1])
