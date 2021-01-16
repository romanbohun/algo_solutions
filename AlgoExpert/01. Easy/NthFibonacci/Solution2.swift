// Time = O(n) | Space = O(n)
class Program {
	private var cache = [1:0, 2: 1]
	
  func getNthFib(n: Int) -> Int {
    return getFibHelper(n: n)
  }
	
	private func getFibHelper(n: Int) -> Int {
		if cache.keys.contains(n) {
			return cache[n]!
		}
		
		cache[n] = getFibHelper(n: n - 1) + getFibHelper(n: n - 2)
		return cache[n]!
	}
	
}
