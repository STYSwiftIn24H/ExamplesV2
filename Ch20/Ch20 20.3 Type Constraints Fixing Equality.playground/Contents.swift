func areIntsEqual(first: Int, _ second: Int) -> Bool {
    return first == second
}

func areStringsEqual(first: String, _ second: String) -> Bool {
    return first == second
}

// the following function has an error, to illustrate a point in the book.
func areTheseEqual<T: Equatable>(first: T, _ second: T) -> Bool {
    return first == second
}

let a = 6, b = 7, c = 6
areIntsEqual(a, b)

let hi = "hi", hello = "hi", bonjour = "bonjour"
areStringsEqual(hi, hello)

areTheseEqual(a, c)
areTheseEqual(hello, bonjour)
