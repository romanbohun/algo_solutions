//Time O(n) | Space O(1)
class Program {
  func maximumSubsetSum(array: [Int]) -> Int {
        guard !array.isEmpty else {
			return 0
		}
		
		let count = array.count
		guard count > 1 else {
			return array[0]
		}
		
		var current = 0
		var index = 2
		var first = max(array[0], array[1])
		var second = array[0]
		
		while index < count {
			current = max(first, second + array[index])
			second = first
			first = current
			index += 1
		}
		
    return first
  }
}
