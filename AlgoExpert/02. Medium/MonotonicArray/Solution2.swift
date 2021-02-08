// Time O(n) | Space O(1)
class Program {
  func isMonotonic(array: [Int]) -> Bool {
		let count = array.count - 1
    guard count > 1 else {
			return true
		}
		
		var isDescending = true
		var isAscending = true
		
		for index in 1...count {
			if array[index] < array[index - 1] {
				isDescending = false
			}
			
			if array[index] > array[index - 1] {
				isAscending = false
			}
		}
		
    return isDescending || isAscending
  }
}
