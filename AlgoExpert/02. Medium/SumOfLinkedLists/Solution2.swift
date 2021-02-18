// Time O(max(m,n)) | Space O(max(m,n))
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
    var resultLinkedList = LinkedList(value: 0)
		var currentNode = resultLinkedList
		
		var firstLinkedListNode: LinkedList? = linkedListOne
		var secondLinkedListNode: LinkedList? = linkedListTwo
		var carryNumber = 0
		
		while firstLinkedListNode != nil || secondLinkedListNode != nil || carryNumber != 0 {
			var firstValue = 0
			var secondValue = 0
			
			if firstLinkedListNode != nil {
				firstValue = firstLinkedListNode!.value
			}
			
			if secondLinkedListNode != nil {
				secondValue = secondLinkedListNode!.value
			}
			
			var sumOfValues = firstValue + secondValue + carryNumber
			var valueToStore = sumOfValues % 10
			let newList = LinkedList(value: valueToStore)
			currentNode.next = newList
			currentNode = newList
			
			carryNumber = sumOfValues / 10
			
			if firstLinkedListNode != nil {
				firstLinkedListNode = firstLinkedListNode!.next
			}
			
			if secondLinkedListNode != nil {
				secondLinkedListNode = secondLinkedListNode!.next
			}
		}
		
    return resultLinkedList.next!
  }
}
