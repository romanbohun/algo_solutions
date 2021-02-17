//Time O(n) | Space O(1)
class Program {
  func classPhotos(_ redShirtHeights: inout [Int], _ blueShirtHeights: inout [Int]) -> Bool {
		let count = redShirtHeights.endIndex
		var index = 0
		
		var sumRed = 0
		var sumBlue = 0
		
		while index < count {
			sumRed += redShirtHeights[index]
			sumBlue += blueShirtHeights[index]
			index += 1
		}
		
    return max(sumRed, sumBlue) - min(sumRed, sumBlue) == count
  }
}
