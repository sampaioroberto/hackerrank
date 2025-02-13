func birthdayCakeCandles(candles: [Int]) -> Int {
  let sortedCandles = candles.sorted()
  guard let lastElement = sortedCandles.last else { return 0 }
  return sortedCandles.filter { $0 == lastElement }.count
}

/* I think the solution above is not the best one because it sorts first O(nlogn) and then filter O(n).
 Too much operations and we can probably make it only O(n)
*/

func birthdayCakeCandles2(candles: [Int]) -> Int {
  var count = 0
  var maxHeight = 0
  for candle in candles {
    if maxHeight < candle {
      count = 1
      maxHeight = candle
    } else if maxHeight == candle {
      count += 1
    }
  }
  return count
}

/* I think this solution is less readable, but at least is faster for this kind of tests. Probably in
 a real world project would be better to stick with the first solution because it would make it more readable for next developers and probably the performance gain would not be a really bad con.
*/
