// Time O(n) | Space O(1)
class Program {
  // This is an input class. Do not edit.
  class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    var parent: BinaryTree?

    init(value: Int) {
      self.value = value
      left = nil
      right = nil
      parent = nil
    }
  }

  func findSuccessor(_ tree: BinaryTree, _ node: BinaryTree) -> BinaryTree? {
    if let rightNode = node.right {
			return getLeftSuccessorChild(node: rightNode)
		}
		
    return getRightSuccessorParent(node: node)
  }
	
	private func getLeftSuccessorChild(node: BinaryTree) -> BinaryTree? {
		var currentNode = node
		while currentNode.left != nil {
			currentNode = currentNode.left!
		}
		
		return currentNode
	}
	
	private func getRightSuccessorParent(node: BinaryTree) -> BinaryTree? {
		var currentNode = node
		while currentNode.parent != nil && currentNode.parent!.right === currentNode {
			print(currentNode.value)
			currentNode = currentNode.parent!
		}
		
		return currentNode.parent
	}
}
