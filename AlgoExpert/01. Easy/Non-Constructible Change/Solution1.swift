// Time O(nlog(n)) | Space O(1)
class Program {
  func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    coins.sort()
		
		let count = coins.endIndex
		var index = 0
		var minSumOfCoins = 0
		
		while index < count {
			if coins[index] > minSumOfCoins + 1 {
				return minSumOfCoins + 1
			}
			minSumOfCoins += coins[index]
			index += 1
		}
		
    return minSumOfCoins + 1
  }
}
