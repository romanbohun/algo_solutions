class Program {
  class Node {
    let name: String
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

    func depthFirstSearch(array: inout [String]) -> [String] {
      depthFirstSearchHelper(kid: self, array: &array)
      return array
    }
		
		private func depthFirstSearchHelper(kid: Node, array: inout [String]) {
			array.append(kid.name)
			
			for kid in kid.children {
				depthFirstSearchHelper(kid: kid, array: &array)
			}
		}
  }
}
