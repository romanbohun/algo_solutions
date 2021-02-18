// Time O(n) | Space O(n)
class Program {
  func balancedBrackets(string: String) -> Bool {
    var array = [Character]()
		var brackets = "(){}[]"
		
		for item in string {
			guard brackets.contains(item) else {
				continue
			}
			switch item {
				case "(":
					array.append(")")
				case "{":
					array.append("}")
				case "[":
					array.append("]")
				default:
					if item == array.last {
						array.removeLast()
					} else {
						return false
					}
			}
			
		}
		
    return array.isEmpty
  }
}
