// time = O(Log(n)) | space = O(Log(n))
class Program {
  func binarySearch(array: [Int], target: Int) -> Int {
    return binarySearchJob(array, target: target, leftIndex: 0, rightIndex: array.endIndex - 1)
  }
	
	func binarySearchJob(_ array: [Int], target: Int, leftIndex: Int, rightIndex: Int) -> Int {
		guard leftIndex <= rightIndex else {
			return -1
		}
		let middleIndex = (leftIndex + rightIndex) / 2
		let currentMiddleNum = array[middleIndex]
		
		if currentMiddleNum == target {
			return middleIndex
		} else if currentMiddleNum > target {
			return binarySearchJob(array, target: target, leftIndex: leftIndex, rightIndex: middleIndex - 1)
		} else {
			return binarySearchJob(array, target: target, leftIndex: middleIndex + 1, rightIndex: rightIndex)				
		}
	}
}
