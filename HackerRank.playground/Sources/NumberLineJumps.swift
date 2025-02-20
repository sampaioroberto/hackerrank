func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
  var pos1 = x1
  var pos2 = x2
  while(pos1 != pos2) {
    if (pos1 < pos2 && v1 <= v2) || (pos2 < pos1 && v2 <= v1) {
        return "NO"
    }
    pos1 += v1
    pos2 += v2
  }
  return "YES"
}
