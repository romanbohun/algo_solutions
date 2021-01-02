class Program {
  func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
		var result = [[Int]]()
		
		array.sort()
		
		for index in 0..<array.endIndex {
			var leftIndex = index + 1
			var rightIndex = array.endIndex - 1
			
			while leftIndex < rightIndex {
				let sum = array[index] + array[leftIndex] + array[rightIndex]
				
				if sum == targetSum {
					result.append([array[index], array[leftIndex], array[rightIndex]])
					leftIndex += 1
					rightIndex -= 1
				} else if sum < targetSum {
					leftIndex += 1
				} else {
					rightIndex -= 1
				}
			}
		}
		
    return result
  }
}
