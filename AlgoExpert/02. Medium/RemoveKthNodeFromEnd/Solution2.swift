// Time O(n) | Space O(1)
class Program {
  // This is an input class. Do not edit.
  class LinkedList {
    var value: Int?
    var next: LinkedList?

    init(value: Int) {
      self.value = value
      next = nil
    }
  }

  func removeKthNodeFromEnd(head: LinkedList, k: Int) {
    var firstNode: LinkedList? = head
		var secondNode: LinkedList? = head
		var previousNode: LinkedList?
		var currentIndex = 0
		
		while secondNode != nil {
			if currentIndex >= k {
				previousNode = firstNode
				firstNode = firstNode?.next
			}
			secondNode = secondNode?.next
			currentIndex += 1			
		}
		
		if previousNode == nil {
			firstNode?.value = firstNode?.next?.value
			firstNode?.next = firstNode?.next?.next
		} else {
			previousNode?.next = previousNode?.next?.next
		}
  }
}
