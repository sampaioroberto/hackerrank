func timeConversion(s: String) -> String {
    precondition(s.count == 10)
    let isAM = s.contains("AM")
    let components = s.components(separatedBy: ":")
    var hour = Int(components[0]) ?? 0
    if isAM {
        hour = hour == 12 ? 0 : hour
    } else {
        hour = hour == 12 ? 12 : hour+12
    }
    
    let hourText = hour < 10 ? "0\(hour)" : "\(hour)"
    
    return String("\(hourText):\(components[1]):\(components[2])".dropLast(2))
}

// Improvement using AI
func timeConversion2(s: String) -> String {
  //This one is okay. I should've looked the sufixes
  guard s.count == 10, s.hasSuffix("AM") || s.hasSuffix("PM") else {
    fatalError("Formato inválido")
  }
  
  /* hasSuffix é better for this case because
     1. Less cost, because it will verify only the end of the string
     2. Avoids false positives, in the case we have AM in other parts of the string
  */
  let isAM = s.hasSuffix("AM")
  
  // Looks good already removing the not time part of the string
  let timePart = String(s.prefix(8)) // Remove "AM" ou "PM"
  
  // split(separator:) is better for this case to avoid empty cases if we have double : char.
  let components = timePart.split(separator: ":").map { String($0) }

  // That's good to have this validation, so we will not crash later. Well... still crashing now
  guard components.count == 3, let hour = Int(components[0]) else {
    fatalError("Formato inválido")
  }

  // Looks cleaner
  let convertedHour = isAM ? (hour == 12 ? 0 : hour) : (hour == 12 ? 12 : hour + 12)
  
  // This string format is something really good to know!
  return String(format: "%02d:%@:%@", convertedHour, components[1], components[2])
}
