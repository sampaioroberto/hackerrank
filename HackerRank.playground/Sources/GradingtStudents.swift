private func round(grade: Int) -> Int {
  switch grade {
  case 0...37:
    return grade
  case grade where 5-(grade % 5) <= 2:
    return grade + 5-(grade % 5)
  default:
    return grade
  }
}

public func gradingStudents(grades: [Int]) -> [Int] {
  return grades.map(round)
}
