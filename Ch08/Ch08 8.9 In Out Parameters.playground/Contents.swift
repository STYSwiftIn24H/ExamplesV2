
// Listing 8.9
func reverseWords(inout firstWord: String, inout secondWord: String) {
    let tempWord = firstWord
    firstWord = secondWord
    secondWord = tempWord
}

var firstWord = "I am first"
var secondWord = "I am second"
reverseWords(&firstWord, secondWord: &secondWord)
firstWord
secondWord
