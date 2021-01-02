class Program {
  func insertionSort(array: inout [Int]) -> [Int] {
		
    for index in 1..<array.endIndex {
			var traverseIndex = index
			while traverseIndex > 0 {
				if array[traverseIndex - 1] > array[traverseIndex] {
					let tmp = array[traverseIndex - 1]
					array[traverseIndex - 1] = array[traverseIndex]
					array[traverseIndex] = tmp
				} else {
					break
				}
				traverseIndex -= 1
			}
		}
		
    return array
  }
}
