// Try It Yourself setion 2

import Foundation

let examScore = arc4random() % 101
var grade = ""

switch examScore {
case 90...100:
    grade = "A"
case 80..<90:
    grade = "B"
case 70..<80:
    grade = "C"
case 60..<70:
    grade = "D"
default:
    grade = "F"
}

"Student received \(grade)"
