// Time O(n+m) | Space O(n+m)
class Program {
  // This is an input class. Do not edit.
  class LinkedList {
    var value: Int
    var next: LinkedList?

    init(value: Int) {
      self.value = value
    }
  }

  func sumOfLinkedLists(_ linkedListOne: LinkedList, _ linkedListTwo: LinkedList) -> LinkedList? {
    var sum1 = getSumOfLinkedList(linkedListOne)
		var sum2 = getSumOfLinkedList(linkedListTwo)
		var sumResult = sum1 + sum2
		
    return convertSumToLinkedList(sumResult)
  }
	
	private func getSumOfLinkedList(_ list: LinkedList) -> Int {
		var current: LinkedList? = list
		var array = [Int]()
		var sum = 0
		
		while current != nil {
			array.append(current!.value)
			current = current?.next
		}
		
		array.reverse()
		for item in array {
			sum *= 10
			sum += item
		}
		return sum
	}
	
	private func convertSumToLinkedList(_ sum: Int) -> LinkedList? {
		guard sum > 0 else {
			return LinkedList(value: sum)
		}
		var currentSum = sum
		var newLinkedList = LinkedList(value: 0)
		var currentLinkedList = newLinkedList
		
		while currentSum > 0 {
			let reminder = currentSum % 10
			let newNode = LinkedList(value: reminder)
			currentLinkedList.next = newNode
			currentLinkedList = newNode
			currentSum = (currentSum - reminder) / 10
		}
		
		return newLinkedList.next
	}
	
}
