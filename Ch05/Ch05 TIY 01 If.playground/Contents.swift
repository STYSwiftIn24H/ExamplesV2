import Foundation

// Try It Yourself section
let randomNumber = arc4random() % 10
var result = ""

if randomNumber == 0 {
    result = "Zero is the first index in an array"
} else if randomNumber == 1 {
    result = "One is the loneliest number..."
} else {
    result = "Our random number is \(randomNumber)"
}

result
