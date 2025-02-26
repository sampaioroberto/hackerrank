func getTotalX(a: [Int], b: [Int]) -> Int {
  var betweenSetsCount = 0
  let sortedFactors = a.sorted()
  let elements = b.sorted()
  let lastFactor = sortedFactors.last ?? 0
  let firstElement = elements.first ?? 0
  var multiplier = 1
  var stillIntegersBetweenSets = true
  
  while(stillIntegersBetweenSets) {
    var isPossible = true
    var firstElement = elements[0]
    let possibleInteger = lastFactor * multiplier
    
    if possibleInteger > firstElement {
      stillIntegersBetweenSets = false
      continue
    }
    
    sortedFactors.forEach {
      if possibleInteger % $0 != 0 {
          isPossible = false
      }
    }
    
    elements.forEach {
      if $0 % possibleInteger != 0 {
          isPossible = false
      }
    }
    
    if isPossible {
      betweenSetsCount += 1
    }
    
    multiplier += 1
  }
  
  return betweenSetsCount
}
