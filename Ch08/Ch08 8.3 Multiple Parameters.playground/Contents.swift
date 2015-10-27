
// Listing 8.3
func printWord(word: String, numberOfTimes: Int) {
    for _ in 1...numberOfTimes {
        print("Hello \(word)")
    }
}

printWord("wonderful person reading this book", numberOfTimes: 4)
