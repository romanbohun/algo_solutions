// Time O(N) | Space O(1)
class Program {
  func firstDuplicateValue(_ array: inout [Int]) -> Int {
    for item in array {
			let absoluteValue = abs(item)
			if array[absoluteValue - 1] < 0 {
				return absoluteValue
			}
			array[absoluteValue - 1] = -array[absoluteValue - 1]
		}
		return -1
  }
}
