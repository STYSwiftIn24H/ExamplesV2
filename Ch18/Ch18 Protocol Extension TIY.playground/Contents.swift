protocol Squarable {
    var squared: Int { get }
}

extension Int : Squarable {
    var squared: Int {
        return self * self
    }
}

5.squared
