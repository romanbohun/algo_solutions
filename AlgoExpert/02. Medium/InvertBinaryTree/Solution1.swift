// class BinaryTree: Equatable {
//   var value: Int?
//   var left: BinaryTree?
//   var right: BinaryTree?
// }

// Time O(n) | Space
class Program {
  func invertBinaryTree(tree: BinaryTree?) {
    guard let node = tree else {
			return
		}
		
		let temp = node.left
		node.left = node.right
		node.right = temp
		
		invertBinaryTree(tree: node.left)
		invertBinaryTree(tree: node.right)
	}
}
