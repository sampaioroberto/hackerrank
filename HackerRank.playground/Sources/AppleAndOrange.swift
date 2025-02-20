private func fruitFellBetweenXAndY(startPoint: Int, distance: Int, x: Int, y: Int) -> Bool {
   let fallSpot = startPoint + distance
   return fallSpot >= x && fallSpot <= y
}

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
   let applesCount = apples
     .filter { fruitFellBetweenXAndY(startPoint: a, distance: $0, x: s, y: t) }
     .count
   let orangesCount = oranges
     .filter { fruitFellBetweenXAndY(startPoint: b, distance: $0, x: s, y: t) }
     .count
     
   print(applesCount)
   print(orangesCount)
}
