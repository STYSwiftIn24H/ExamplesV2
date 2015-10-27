func areIntsEqual(first: Int, _ second: Int) -> Bool {
    return first == second
}

func areStringsEqual(first: String, _ second: String) -> Bool {
    return first == second
}

// the following function has an error, to illustrate a point in the book that not all types are equatable.
func areTheseEqual<T>(first: T, _ second: T) -> Bool {
    return first == second
}

