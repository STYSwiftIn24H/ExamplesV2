
// Listing 7.4
for count in -2...2 {
    print("count is \(count)")
}


// Listing 7.5
let myWord = "Supercalifragilisticexpialidocious"
var numberOfEsFound = 0

for eachChar in myWord.characters {
    if eachChar == "e" {
        ++numberOfEsFound
    }
}
print("I found \(numberOfEsFound) e's in \(myWord)")