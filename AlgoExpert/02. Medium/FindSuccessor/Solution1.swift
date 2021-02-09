// Time O(n) | Space O(n)
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
    var arrayOfNodes = [BinaryTree]()
		
		inOrderTraversalHelper(tree: tree, array: &arrayOfNodes)
		
		var index = 1
		var result: BinaryTree?
		
		while index < arrayOfNodes.count {
			if arrayOfNodes[index - 1].value == node.value {
				result = arrayOfNodes[index]
				break
			}
			index += 1
		}
		
    return result
  }
	
	private func inOrderTraversalHelper(tree: BinaryTree?, array: inout [BinaryTree]) {
		guard let tree = tree else {
			return
		}
		
		if let leftNode = tree.left {
				inOrderTraversalHelper(tree: leftNode, array: &array)
		}
		
		array.append(tree)		
		
		if let rightNode = tree.right {
				inOrderTraversalHelper(tree: rightNode, array: &array)
		}
	}
}
