import Foundation

func plusMinus(arr: [Int]) -> Void {
    let arrCount = arr.count
  let trunkMultiplier = pow(10.0, 6.0)
    
    let positivesFactor = Double(arr.filter { $0 > 0 }.count) / Double(arrCount)
    let negativesFactor = Double(arr.filter { $0 < 0 }.count) / Double(arrCount)
    let zeroesFactor = Double(arr.filter { $0 == 0 }.count) / Double(arrCount)
    
    let positivesFactorTrunked = Double(Int(positivesFactor * trunkMultiplier)) / trunkMultiplier
    let negativesFactorTrunked = Double(Int(negativesFactor * trunkMultiplier)) / trunkMultiplier
    let zeroesFactorTrunked = Double(Int(zeroesFactor * trunkMultiplier)) / trunkMultiplier

    print(positivesFactorTrunked)
    print(negativesFactorTrunked)
    print(zeroesFactorTrunked)
}
