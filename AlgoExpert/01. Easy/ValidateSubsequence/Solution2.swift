class Program {
  static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    var seqIndex = 0
		var arrayIndex = 0
		
		while arrayIndex < array.endIndex, seqIndex < sequence.endIndex {
			if (array[arrayIndex] == sequence[seqIndex]) {
				seqIndex += 1				
			}
			
			arrayIndex += 1
		}
		
    return seqIndex == sequence.endIndex
  }
}
