// Time O(n) | Space O(n)
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
    var nodes = [LinkedList]()
		var current: LinkedList? = head
		
		while current != nil {
			nodes.append(current!)
			current = current?.next
		}
		
		let nodeToRemove = nodes.count - k
		if nodeToRemove == 0 {
			nodes[nodeToRemove].value = nodes[nodeToRemove].next?.value
			nodes[nodeToRemove].next = nodes[nodeToRemove].next?.next
		} else {
			nodes[nodeToRemove - 1].next = nodes[nodeToRemove].next
		}
  }
}
