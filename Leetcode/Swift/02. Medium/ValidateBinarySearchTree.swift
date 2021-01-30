/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
 // Time O(N) | Space O(d)
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validateBSTHelper(node: root, min: Int.min, max: Int.max)
    }
    
    private func validateBSTHelper(node: TreeNode?, min: Int, max: Int) -> Bool {
		guard let node = node else {
			return true
		}
		
		let nodeValue = node.val
		if nodeValue <= min || nodeValue >= max {
			return false
		}
		
		let leftValid = validateBSTHelper(node: node.left, min: min, max: nodeValue)
		let rightValid = validateBSTHelper(node: node.right, min: nodeValue, max: max)
		return leftValid && rightValid
	}
}