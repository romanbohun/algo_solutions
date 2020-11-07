//Given a set of distinct integers, nums, return all possible subsets (the power set).
//
//Note: The solution set must not contain duplicate subsets.
//
///Example:
///
///Input: nums = [1,2,3]
///Output:
///[
///  [3],
///  [1],
///  [2],
///  [1,2,3],
///  [1,3],
///  [2,3],
///  [1,2],
///  []
///]

// The first solution
func subsets(_ nums: [Int]) -> [[Int]] {
    var result  = [[Int]]()
    result.append([]);

    guard nums.count > 0 else {
        return result;
    }

    for item in nums.enumerated() {
        result.append([item.element])
        result.append(contentsOf: produceASubset(index: item.offset, array: nums));
    }
    return result
}

func produceASubset(index: Int, array: [Int]) -> [[Int]] {
    var arrayResult = [[Int]]()
    var currentIndex = index + 1

    while currentIndex <= array.count - 1 {
        for item in arrayResult {
            var midArray = item
            midArray.append(array[currentIndex])
            arrayResult.append(midArray)
        }
        arrayResult.append([array[index], array[currentIndex]])
        currentIndex += 1
    }

    return arrayResult
}

// The second solution

//subsets([])
//subsets([1,2,3])
subsets([1,2,3,4])
//subsets([0])
//subsets([1,2])

