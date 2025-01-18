public func pageCount(n: Int, p: Int) -> Int {
  guard p != 1 && p != n && !(n % 2 != 0 && p == n-1) else { return 0 }
  let ascendent = Int(((Double(p) - 1) / 2).rounded(.up))
  let descendent: Int
  if n % 2 == 0 {
    descendent = Int((Double(n-p) / 2).rounded(.up))
  } else {
    descendent = Int((Double(n-p) / 2).rounded(.down))
  }
  
  return min(ascendent, descendent)
}

/* ChatGPT suggestion (That worked, I tested it!)
 public func pageCount(n: Int, p: Int) -> Int {
     let ascendent = p / 2
     let descendent = (n / 2) - (p / 2)
     
     return min(ascendent, descendent)
 }
*/
