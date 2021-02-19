// Time O(n) | Space O(n)
class Program {
  class Node {
    var name: String
    var children: [Node]

    init(name: String) {
      self.name = name
      children = []
    }

    func addChild(name: String) -> Node {
      let childNode = Node(name: name)
      children.append(childNode)

      return self
    }

    func breadthFirstSearch(array: inout [String], kids: [Node] = []) -> [String] {
			var nodes = [self]
			var index = 0
			
			while index < nodes.count {
				array.append(nodes[index].name)
				nodes.append(contentsOf: nodes[index].children)
				index += 1
			}
			
			return array
    }
  }
}
