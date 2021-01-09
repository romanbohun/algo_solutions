// time = O(Log(n)) | space = O(1)
class Program {
  func binarySearch(array: [Int], target: Int) -> Int {
    var leftIndex = 0
		var rightIndex = array.endIndex - 1
		
		while leftIndex <= rightIndex {
			let middleIndex = (leftIndex + rightIndex) / 2
			let currentMiddleNum = array[middleIndex]
			
			if currentMiddleNum == target {
				return middleIndex
			} else if currentMiddleNum > target {
				rightIndex = middleIndex - 1
			} else {
				leftIndex = middleIndex + 1
			}
		}
		
    return -1
  }
}
