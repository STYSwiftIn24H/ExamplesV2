// Find mean, median, and mode of a set of numbers, from Try It Yourself section
func meanMedianMode(numbers: Int...) -> (mean: Double, median: Int, mode: Int) {
    // find mean
    var sum = 0
    for number in numbers {
        sum += number
    }
    let mean = Double(sum) / Double(numbers.count)
    
    // find median
    let sortedNumbers = numbers.sort { num1, num2 in
        return num1 < num2 }
    let midIndex = numbers.count / 2
    let median = sortedNumbers[midIndex]
    
    // find mode
    var occurrences: [Int : Int] = [:]
    for number in numbers {
        if var value = occurrences[number] {
            occurrences[number] = ++value
        } else {
            occurrences[number] = 1
        }
    }
    var highestPair: (key: Int, value: Int) = (0, 0)
    for (key, value) in occurrences {
        highestPair = (value > highestPair.value) ? (key, value) : highestPair
    }
    let mode = highestPair.key
    
    // return tuple of results
    return (mean, median, mode)
}

let mmm = meanMedianMode(1, 1, 2, 3, 5, 8, 13)
mmm.mean
mmm.median
mmm.mode
