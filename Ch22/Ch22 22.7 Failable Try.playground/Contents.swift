enum NumError : ErrorType {
    case NotEven
}

func isEven(num: Int) throws -> Bool {
    if num % 2 != 0 {
        throw NumError.NotEven
    }
    return true
}

func squareAnEvenNumber(num: Int) -> Int? {
    guard let _ = try? isEven(num) else { return nil }
    return num * num
}

squareAnEvenNumber(5)
squareAnEvenNumber(6)