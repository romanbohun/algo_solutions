Time O(n) | Space O(1)
class Program {
  func isMonotonic(array: [Int]) -> Bool {
		let count = array.endIndex
		guard count > 2 else {
			return true
		}
		
		var currentIndex = 2
		var direction = array[1] - array[0]
		
		while currentIndex < count {
			let currentItem = array[currentIndex]	
			let previousItem = array[currentIndex - 1]

			if direction == 0 {
					direction = currentItem - previousItem
					currentIndex += 1
					continue
			}
			
			let difference = currentItem - previousItem
			if direction > 0 {
				if difference < 0 {
					return false
				} 
			} else {
				if difference > 0 {
					return false
				} 
			}
			
			currentIndex += 1
		}
		
    return true
  }
}
