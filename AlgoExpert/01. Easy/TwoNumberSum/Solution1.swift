//Solution 1

class Program {
  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var cache = Set<Int>()
		for item in array {
			let numToFind = targetSum - item
			if cache.contains(item) {
				return [numToFind, item]
			} else {
				cache.insert(numToFind)
			}
		}
    return []
  }
}
