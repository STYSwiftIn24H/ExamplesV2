struct Square {
    static let numberOfSides = 4
    var length: Int
    var perimeter: Int {
        return Square.numberOfSides * length
    }
}

let square = Square(length: 5)
square.perimeter
