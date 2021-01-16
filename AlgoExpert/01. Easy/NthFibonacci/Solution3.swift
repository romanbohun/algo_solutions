// Time = O(N) | Space = O(1)
class Program {
  func getNthFib(n: Int) -> Int {
    var lastTwoNumbers = [0, 1]
		var counter = 3
		while counter <= n {
			let nextNumber = lastTwoNumbers[0] + lastTwoNumbers[1]
			lastTwoNumbers[0] = lastTwoNumbers[1]
			lastTwoNumbers[1] = nextNumber
			counter += 1
		}
		
    return n > 1 ? lastTwoNumbers[1] : lastTwoNumbers[0]
  }
}
