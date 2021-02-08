// Time O(n) | Space O(1)
class Program {
  func longestPeak(array: [Int]) -> Int {
    var peakLength = 0
		
		let count = array.count - 1
		var index = 1
		
		while index < count {
			// peak
			if !(array[index - 1] < array[index]  && array[index] > array[index + 1]) {
				index += 1
				continue
			}
			
			var currentPeakLength = 1
			var currentIndexLeft = index
			while currentIndexLeft > 0 && array[currentIndexLeft] > array[currentIndexLeft - 1] {
				currentPeakLength += 1
				currentIndexLeft -= 1
			}
			
			var currentIndexRight = index
			while currentIndexRight < count && array[currentIndexRight + 1] < array[currentIndexRight] {
				currentPeakLength += 1
				currentIndexRight += 1
			}
			
			peakLength = max(peakLength, currentPeakLength)
			index = currentIndexRight
		}
		
    return peakLength
  }
}
 