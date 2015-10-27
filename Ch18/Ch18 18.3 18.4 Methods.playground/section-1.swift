//
// Listing 18.3
//
extension Int {
    func execute(closure: () -> ()) {
        guard self >= 0 else { return }
        for _ in 1...self {
            closure()
        }
    }
}

3.execute { print("I'm positive I'll be printed!") }
(-4).execute { print("I'm so negative, I won't be printed.") }

//
// Listing 18.4
//
struct Player {
    var score = 0
    mutating func increaseScore() {
        ++score
    }
    mutating func decreaseScore() {
        --score
    }
}
var player = Player()
// while playing game, player wins 5 points
5.execute { player.increaseScore() }
player.score
