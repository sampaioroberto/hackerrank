func miniMaxSum(arr: [Int]) -> Void {
    precondition(arr.count == 5)
    var sortedArray = arr.sorted()
    
    let totalValue = sortedArray.reduce(0, +)
    let min = totalValue - sortedArray[4]
    let max = totalValue - sortedArray[0]
    print(min, max)
}
