class Program {
  func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
    var indexFirst = 0
		var indexSecond = 0
		var result = [0, 0]
		
		arrayOne.sort()
		arrayTwo.sort()
		var diff = Int.max
		
		while indexFirst < arrayOne.endIndex && indexSecond < arrayTwo.endIndex {
			let curDiff	= abs(arrayOne[indexFirst] - arrayTwo[indexSecond])
			print(curDiff)
			
			if curDiff < diff {
				diff = curDiff
				result[0] = arrayOne[indexFirst]
				result[1] = arrayTwo[indexSecond]
			}
			
			if arrayOne[indexFirst] < arrayTwo[indexSecond] && indexFirst < arrayOne.endIndex {
				indexFirst += 1
			} else if indexSecond < arrayTwo.endIndex {
				indexSecond += 1
			}
		}
		
    return result
  }
}
