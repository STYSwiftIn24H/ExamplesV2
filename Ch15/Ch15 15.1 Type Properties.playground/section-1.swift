struct Square {
    static let numberOfSides = 4
}
print("sides of a square: \(Square.numberOfSides)")

enum CardSuits {
    static let description = "The four suits of a deck of cards"
    
    case Hearts, Diamonds, Spades, Clubs
}
print("suit description: \(CardSuits.description)")

class Pentagon {
    static let numberOfSides = 5
}
print("sides of a pentagon: \(Pentagon.numberOfSides)")
