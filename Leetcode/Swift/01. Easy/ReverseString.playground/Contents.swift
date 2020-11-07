//Write a function that reverses a string. The input string is given as an array of characters char[].
//
//Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
//
//You may assume all the characters consist of printable ascii characters.
//
//
//
///Example 1:
///
///Input: ["h","e","l","l","o"]
///Output: ["o","l","l","e","h"]
///Example 2:
///
///Input: ["H","a","n","n","a","h"]
///Output: ["h","a","n","n","a","H"]

func reverseString(_ s: inout [Character]) {
    guard s.count > 1 else {
        return
    }

    var leftIndex = 0
    var rightIndex = s.endIndex - 1

    while leftIndex < rightIndex {
        let tmp = s[rightIndex]
        s[rightIndex] = s[leftIndex]
        s[leftIndex] = tmp

        leftIndex += 1
        rightIndex -= 1
    }
}

var ar: [Character] = ["h","e","l","l","o"]
reverseString(&ar)
print(ar)

