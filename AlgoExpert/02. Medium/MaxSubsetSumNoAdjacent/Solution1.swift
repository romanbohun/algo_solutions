// Time O(n) | Space O(n)
class Program {
  func maximumSubsetSum(array: [Int]) -> Int {
    guard !array.isEmpty else {
			return 0
		}
		
		let count = array.count
		guard count > 1 else {
			return array[0]
		}
		
		var maxSums = array
		maxSums[1] = max(maxSums[0], maxSums[1])
		var index = 2

		while index < count {
			maxSums[index] = max(maxSums[index - 1], maxSums[index - 2] + array[index])
			index += 1
		}
		
    return maxSums.last!
  }
}