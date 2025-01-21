func countingValleys(steps: Int, path: String) -> Int {
  var numberOfValleys = 0
  var currentPosition = 0
  path.forEach {
    if $0 == "D" {
      currentPosition -= 1
    } else {
      currentPosition += 1
      
      if currentPosition == 0 {
        numberOfValleys += 1
      }
    }
  }
  
  return numberOfValleys
}
