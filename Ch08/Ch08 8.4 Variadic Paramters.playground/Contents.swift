
// Listing 8.4
func addVariadicNumbers(numbers: Int...) {
    var result = 0
    for eachNum in numbers {
        result += eachNum
    }
    print("Sum total of numbers: \(result)")
}

addVariadicNumbers(1, 2, 3, 4, 5)
addVariadicNumbers(4)
addVariadicNumbers(0)
