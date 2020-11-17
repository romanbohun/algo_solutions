//Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.
//
//Note that elements beyond the length of the original array are not written.
//
//Do the above modifications to the input array in place, do not return anything from your function.
//
///
///Example 1:
///
///Input: [1,0,2,3,0,4,5,0]
///Output: null
///Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
///Example 2:
///
///Input: [1,2,3]
///Output: null
///Explanation: After calling your function, the input array is modified to: [1,2,3]
///
///Note:
///
///1 <= arr.length <= 10000
///0 <= arr[i] <= 9

func duplicateZeros(_ arr: inout [Int]) {
    var zeros = arr.reduce(0) { (result, num) -> Int in
        return num == 0 ? result + 1 : result
    }

    guard zeros > 0 else {
        return
    }

    var index = arr.endIndex - 1

    while index >= 0 {
        let tmp = arr[index]

        if tmp == 0 {
            if index + zeros <= arr.endIndex - 1 {
                arr[index + zeros] = 0
                arr[index - 1 + zeros] = tmp
            } else if index + 1 == arr.endIndex - 1 {
                arr[index + 1] = 0
            }
            zeros -= 1
        } else {
            if index + zeros <= arr.endIndex - 1 {
                arr[index + zeros] = tmp
            }
        }

        index -= 1
    }
}

//var arr = [1,0,2,3,0,4,5,0]
//var arr = [1,2,3]
//var arr = [0]
var arr = [0,1,7,6,0,2,0,7]
//var arr = [8,4,5,0,0,0,0,7]
duplicateZeros(&arr)
print(arr)
