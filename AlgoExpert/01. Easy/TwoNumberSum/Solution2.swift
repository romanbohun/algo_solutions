//Solution 2
class Program {
  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    array.sort()
		
		var leftIndex = 0
		var rightIndex = array.endIndex - 1
		
		while leftIndex < rightIndex {
			let leftItem = array[leftIndex]
			let rightItem = array[rightIndex]
			let sum = leftItem + rightItem
			
			if targetSum == sum {
				return [leftItem, rightItem]
			} else if sum < targetSum {
				leftIndex += 1
			} else {
				rightIndex -= 1
			}
		}
		
    return []
  }
}
