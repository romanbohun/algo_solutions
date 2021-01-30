//Time O(N) | Space O(D)
class Program {
  // This is an input class. Do not edit.
  class BST {
    var value: Int?
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
      left = nil
      right = nil
    }
  }

  func inOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
    inOrderTraversalHelper(tree: tree, array: &array)
    return array
  }

	private func inOrderTraversalHelper(tree: BST?, array: inout [Int]) {
		guard let node = tree else {
			return
		}
		
		if let leftNode = node.left {
				inOrderTraversalHelper(tree: leftNode, array: &array)
		}
		
		array.append(node.value!)
		
		if let rightNode = node.right {
				inOrderTraversalHelper(tree: rightNode, array: &array)
		}
	}
	
	func preOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
    preOrderTraversalHelper(tree: tree, array: &array)
    return array
  }

	private func preOrderTraversalHelper(tree: BST?, array: inout [Int]) {
		guard let node = tree else {
			return
		}
		
		array.append(node.value!)
		
		if let leftNode = node.left {
				preOrderTraversalHelper(tree: leftNode, array: &array)
		}
		
		if let rightNode = node.right {
				preOrderTraversalHelper(tree: rightNode, array: &array)
		}
	}
	
  func postOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
    postOrderTraversalHelper(tree: tree, array: &array)
    return array
  }
	
	private func postOrderTraversalHelper(tree: BST?, array: inout [Int]) {
		guard let node = tree else {
			return
		}
		
		if let leftNode = node.left {
				postOrderTraversalHelper(tree: leftNode, array: &array)
		}
		
		if let rightNode = node.right {
				postOrderTraversalHelper(tree: rightNode, array: &array)
		}
		
		array.append(node.value!)
	}
}
