// Time O(N) | Space O(d)
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

  func validateBST(tree: BST) -> Bool {
    return validateBSTHelper(node: tree, min: Int.min, max: Int.max)
  }
	
	private func validateBSTHelper(node: BST?, min: Int, max: Int) -> Bool {
		guard let node = node else {
			return true
		}
		
		guard let nodeValue = node.value else {
			return false
		}
		
		if nodeValue < min || nodeValue >= max {
			return false
		}
		
		let leftValid = validateBSTHelper(node: node.left, min: min, max: nodeValue)
		let rightValid = validateBSTHelper(node: node.right, min: nodeValue, max: max)
		return leftValid && rightValid
	}
}
