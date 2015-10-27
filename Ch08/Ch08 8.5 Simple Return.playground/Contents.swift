
// Listing 8.5
func addVariadicNumbersAndReturnInt(numbers: Int...) -> Int {
    var result = 0
    for eachNum in numbers {
        result += eachNum
    }
    return result
}

let sum = addVariadicNumbersAndReturnInt(7, 4, 9)