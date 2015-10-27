enum GradesKTo5 {
    case Kindergarten, First, Second, Third, Fourth, Fifth
}

let studentGrade = GradesKTo5.First

switch studentGrade {
case .Kindergarten:
    print("Welcome to Kindergarten!")
case .First:
    print("First grade will be awesome!")
case .Second:
    print("You're in second grade? You must be smart!")
case .Third:
    print("You'll master multiplication in third grade!")
case .Fourth:
    print("Fourth grade spelling bee tryouts, first day!")
case .Fifth:
    print("Fifth graders rule the school!")
}
