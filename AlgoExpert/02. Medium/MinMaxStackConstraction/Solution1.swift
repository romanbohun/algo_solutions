class Program {
  // Feel free to add new properties and methods to the class.
  class MinMaxStack {
		private var _data: [Int] = []
		private var _minMax: [(min: Int, max: Int)] = []
		
		//Time O(1) | Space O(1)
    func peek() -> Int? {
      return _data.last
    }

		//Time O(1) | Space O(1)
    func pop() -> Int? {
			_minMax.removeLast()
			return _data.removeLast()
    }

		//Time O(1) | Space O(1)
    func push(number: Int) {
      _data.append(number)
			if let lastMinMax = _minMax.last {
				_minMax.append((min(lastMinMax.min, number), max(lastMinMax.max, number)))
			} else {
				_minMax.append((number, number))
			}
    }

		//Time O(1) | Space O(1)
    func getMin() -> Int? {
			return _minMax.last?.min
    }

		//Time O(1) | Space O(1)
    func getMax() -> Int? {
			return _minMax.last?.max
    }
  }
}
