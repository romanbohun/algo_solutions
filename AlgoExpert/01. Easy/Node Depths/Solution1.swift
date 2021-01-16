class Program {
  class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?

    init(value: Int) {
      self.value = value
    }
  }

  static func nodeDepths(_ root: BinaryTree?) -> Int {
    return nodeDepthsHelper(root)
  }
	
	private static func nodeDepthsHelper(_ node: BinaryTree?, depth: Int = 0) -> Int {
		if let node = node {
			let leftDepth = nodeDepthsHelper(node.left, depth: depth + 1)
			let rightDepth = nodeDepthsHelper(node.right, depth: depth + 1)
			return depth + leftDepth + rightDepth
		}
		return 0
	}
	
}
