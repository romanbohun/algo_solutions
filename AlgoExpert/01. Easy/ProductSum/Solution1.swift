class Program {
  // Tip: You can cast each element with `as? [Any]` to check whether it is
  // an array or an integer.
  func productSum(_ array: [Any], multiplier: Int) -> Int {
		var total = 0

    for item in array {
			if let unwrappedInt = item as? Int {
				total += unwrappedInt
			} else if let unwrappedArray = item as? [Any] {
				total += productSum(unwrappedArray, multiplier: multiplier + 1)
			}
		}
		
    return total * multiplier
  }
}
