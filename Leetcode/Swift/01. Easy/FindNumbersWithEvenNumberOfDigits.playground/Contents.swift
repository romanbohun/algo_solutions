//Given an array nums of integers, return how many of them contain an even number of digits.
//
///Example 1:
///
///Input: nums = [12,345,2,6,7896]
///Output: 2
///Explanation:
///12 contains 2 digits (even number of digits).
///345 contains 3 digits (odd number of digits).
///2 contains 1 digit (odd number of digits).
///6 contains 1 digit (odd number of digits).
///7896 contains 4 digits (even number of digits).
///Therefore only 12 and 7896 contain an even number of digits.
///Example 2:
///
///Input: nums = [555,901,482,1771]
///Output: 1
///Explanation:
///Only 1771 contains an even number of digits.
///
///Constraints:
///
///1 <= nums.length <= 500
///1 <= nums[i] <= 10^5

func findNumbers(_ nums: [Int]) -> Int {
    var result = 0

    for item in nums {
        result += String(item).count % 2 == 0 ? 1 : 0
    }

    return result
}

findNumbers([55,901,482,1771])

func findNumbers2(_ nums: [Int]) -> Int {
    var result = 0

    for item in nums {
        if (isEven(item)) {
            result += 1
        }
    }

    return result
}

func isEven(_ digit: Int) -> Bool {
    var res = digit
    var count = 0
    while res > 0 {
        res = res / 10
        count += 1
    }
    return count % 2 == 0
}

findNumbers2([55,901,482,1771])
