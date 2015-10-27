
// Listint 7.9
var results = [Int]()

for count in 1...100 {
    let remainder = count % 7
    switch remainder {
    case 1...6:
        continue
    default:
        results.append(count)
    }
    print("\(count) is divisible by 7")
}


// Listing 7.10
let word = "Supercalifragilisticexpialidocious"

for eachChar in word.characters {
    print(eachChar)
    if eachChar == "x" {
        print("\(word) contains an 'x'")
        break
    }
}

