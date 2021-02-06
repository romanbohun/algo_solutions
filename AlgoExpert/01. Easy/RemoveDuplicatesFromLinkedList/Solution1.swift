class Program {
  // This is an input class. Do not edit.
  class LinkedList {
    var value: Int
    var next: LinkedList?

    init(value: Int) {
      self.value = value
    }
  }

  func removeDuplicatesFromLinkedList(_ linkedList: LinkedList) -> LinkedList {
    var currentNode: LinkedList? = linkedList
		while currentNode != nil {
			if let next = currentNode!.next, 
					let node = currentNode,
					next.value == node.value {
				node.next = next.next
			} else {
				currentNode = currentNode?.next
			}
		}
		return linkedList
  }
}
