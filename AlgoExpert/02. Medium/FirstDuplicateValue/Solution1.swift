
// Time O(N) | Space O(N)
class Program {
  func firstDuplicateValue(_ array: inout [Int]) -> Int {
    var cache = Set<Int>()
		for item in array {
			if cache.contains(item) {
				return item
			}
			cache.insert(item)
		}
		return -1
  }
}
