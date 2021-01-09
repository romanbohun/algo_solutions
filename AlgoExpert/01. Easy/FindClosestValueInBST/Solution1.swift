// Time = O(Log(N)) | Space = O(1)
class Program {
  class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
      left = nil
      right = nil
    }
  }
	
  func findClosestValueInBST(tree: BST?, target: Int) -> Int {
    var currentNode = tree
		var closestDiffValue = Int.max
		var closestValue = -1
		
		while currentNode != nil {
			guard let value = currentNode?.value else {
				return closestValue
			}
			
			let diff = abs(target - value)
			
			if closestDiffValue >= diff {
				closestDiffValue = diff
				closestValue = value
			}
			
			if target > value {
				currentNode = currentNode?.right
			} else if target < value {
				currentNode = currentNode?.left
			} else {
				break
			}
		}
		
    return closestValue
  }
}
