class Program {
  func runLengthEncoding(_ string: String) -> String {
		var result = [Character]()
		
		let array = Array(string)
		let count = array.endIndex
		var currentCharCounter = 1
		
		for index in 1..<count {
			let currentChar = array[index]
			let previousChar = array[index-1]
			
			if (currentChar != previousChar || currentCharCounter == 9) {
				result.append(Character(String(currentCharCounter)))
				result.append(previousChar)
				currentCharCounter = 0
			}
			currentCharCounter += 1
		}
		
		result.append(Character(String(currentCharCounter)))
		result.append(array[count - 1])
		
    return String(result)
  }
}
