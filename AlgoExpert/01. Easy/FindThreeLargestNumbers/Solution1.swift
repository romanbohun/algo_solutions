class Program {
	private var _result = [Int.min, Int.min, Int.min]
	
  func findThreeLargestNumbers(array: [Int]) -> [Int] {
    for item in array {
			manage(value: item)
		}
		
    return _result
  }
	
	private func manage(value: Int, with index: Int = 2) {
		guard index >= 0 else {
			return
		}
		
		if _result[index] < value {
			if index > 0 {
				manage(value: _result[index], with: index - 1)
			}
			_result[index] = value
		} else {
			manage(value: value, with: index - 1)
		}
	}
	
}
