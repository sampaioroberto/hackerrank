func sockMerchant(n: Int, ar: [Int]) -> Int {
    var hash: [Int: Int] = [:]
    var allPairsCount = 0
    
    for sockColor in ar {
        hash[sockColor, default: 0] += 1
    }
    
    for count in hash.values {
        allPairsCount += count / 2
    }
    return allPairsCount
}
