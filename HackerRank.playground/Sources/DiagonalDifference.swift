func diagonalDifference(arr: [[Int]]) -> Int {
    var firstDiagonalSum = 0
    var secondDiagonalSum = 0
    let arrCount = arr.count
    for i in 0...arrCount-1 {
        firstDiagonalSum += arr[i][i]
        secondDiagonalSum += arr[i][arrCount-1-i]
    }
    
    return abs(firstDiagonalSum - secondDiagonalSum)
}
