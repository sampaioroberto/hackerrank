import Foundation

enum Piece {
  case pawn
  case knight
  case bishop
  case rook
  case queen
  
  var value: Int {
    switch self {
    case .pawn: return 1
    case .knight, .bishop: return 3
    case .rook: return 5
    case .queen: return 9
    }
  }
  
  static func +(lhs: Int, rhs: Piece) -> Int {
    lhs + rhs.value
  }
}

let piecesArray: [Piece] = [.pawn, .pawn, .bishop, .knight, .rook, .queen]
let sum = piecesArray.reduce(0, +)
