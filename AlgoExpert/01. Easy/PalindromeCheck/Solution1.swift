class Program {
  func isPalindrome(string: String) -> Bool {
		var leftIndex = 0
		var rightIndex = string.count - 1
		
		while leftIndex < rightIndex {
			
			var leftStringIndex = string.index(string.startIndex, offsetBy: leftIndex)
			var rightStringIndex = string.index(string.startIndex, offsetBy: rightIndex)

			if (string[leftStringIndex] != string[rightStringIndex]) {
				return false
			}
			leftIndex += 1
			rightIndex -= 1
		}
		
    return true
  }
}
