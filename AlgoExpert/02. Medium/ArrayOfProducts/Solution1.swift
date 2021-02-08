// Time O(n) | Space O(n)
class Program {
  func arrayOfProducts(_ array: [Int]) -> [Int] {
    var result = [Int](repeating: 1, count: array.count)
		
		var curSum = 1
		for index in 0 ..< array.count {
			result[index] = curSum
			curSum *= array[index]
		}
		
		curSum = 1
		for index in stride(from: array.count - 1, through: 0, by: -1) {
			result[index] *= curSum
			curSum *= array[index]
		}
		
		print(result)
    return result
  }
}
