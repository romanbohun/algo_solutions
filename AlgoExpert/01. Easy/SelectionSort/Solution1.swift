class Program {
  func selectionSort(array: inout [Int]) -> [Int] {
		for index in 0..<array.endIndex - 1 {
			
			var smallestIndex = index
			var traverseIndex = index + 1
			while traverseIndex < array.endIndex {
				if array[traverseIndex] < array[smallestIndex] {
					smallestIndex = traverseIndex
				}
				traverseIndex += 1
			}
			
			let tmp = array[index]
			array[index] = array[smallestIndex]
			array[smallestIndex] = tmp
		}
		
    return array
  }
}
