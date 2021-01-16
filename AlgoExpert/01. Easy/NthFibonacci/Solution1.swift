// Time = O(n^2) | Space = O(n)
class Program {
  func getNthFib(n: Int) -> Int {
		guard n > 1 else {
			return 0
		}
    guard n > 2 else {
			return 1
		}
    return getNthFib(n: n - 1) + getNthFib(n: n - 2)
  }
}
