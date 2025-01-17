func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    /* Not needed, but in mobile side it would be good
       to not crash in the case we have an unexpected scenario
       guard a.count == 2, b.count == 2 else { [] }
    */
    var anaScore = 0
    var bobScore = 0
    for i in 0...2 {
        if a[i] < b[i] {
            bobScore += 1
        }
        if a[i] > b[i] {
            anaScore += 1
        }
    }
    
    return [anaScore, bobScore]
}
