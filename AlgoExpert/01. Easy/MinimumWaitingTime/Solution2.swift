// Time O(N Log N) | Time O(1)
class Program {

  func minimumWaitingTime(_ queries: inout [Int]) -> Int {
    var total = 0
		queries.sort()
		for (index, queryDuration) in queries.enumerated() {
			let queriesLeft = queries.count - (index + 1)
			total += queryDuration * queriesLeft
		}
		return total
  }
}
