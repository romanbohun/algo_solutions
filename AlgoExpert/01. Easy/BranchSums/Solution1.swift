class Program {
  class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
    }
  }

  func branchSums(root: BST) -> [Int] {
    var resultArray = [Int]()
		branchSumHelper(node: root, sum: 0, array: &resultArray)
    return resultArray
  }
	
	private func branchSumHelper(node: BST, sum: Int, array: inout [Int]) {
			let sumTotal = sum + node.value
			 
		  if node.left == nil && node.right == nil {
				array.append(sumTotal)
				return
			}
		
			if let leftNode = node.left {
				branchSumHelper(node: leftNode, sum: sumTotal, array: &array)
			}
		
			if let rightNode = node.right {
				branchSumHelper(node: rightNode, sum: sumTotal, array: &array)
			} 
	}
	
}
