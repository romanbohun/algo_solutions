class Program {
  func bubbleSort(array: inout [Int]) -> [Int] {
		let count = array.endIndex
		
		for index1 in 0..<count {
			let lowIndex: Range = index1+1..<count
			for index2 in lowIndex {
				if (array[index1] > array[index2]) {
					let tmp = array[index1]
					array[index1] = array[index2]
					array[index2] = tmp
				}
			}
		}
    return array
  }
}
