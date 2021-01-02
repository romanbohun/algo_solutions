class Program {
  func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
    
		var leftIndex = 0
		var rightIndex = array.endIndex - 1
		
		while leftIndex < rightIndex {
			if array[leftIndex]	!= toMove {
				leftIndex += 1	
			} else if array[rightIndex] == toMove {
				rightIndex -= 1
			} else {
				let tmp = array[rightIndex]
				array[rightIndex] = array[leftIndex]
				array[leftIndex] = tmp
				leftIndex += 1
			}
		}
		
    return array
  }
}
