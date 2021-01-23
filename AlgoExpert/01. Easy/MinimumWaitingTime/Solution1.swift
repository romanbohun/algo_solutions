// Time = O(N Log N ) | Space O(1)
class Program {

  func minimumWaitingTime(_ queries: inout [Int]) -> Int {
    var totalWaiting = 0
		var currentWaiting = 0
		var index = 0
		
		queries.sort()
		
		while index < queries.endIndex - 1 {
			currentWaiting += queries[index]
			totalWaiting += currentWaiting
			index += 1
		}
		return totalWaiting
  }
}

