import Foundation

let baseURLString = "https://www.something.com"
let baseURL = NSURL(string: baseURLString)

var timestamp: Int {
    return Int(NSDate().timeIntervalSince1970)
}

var secureHash: String {
    return "Sup3rs3cureH4sh"
}

func timestampedURL(url: NSURL) -> NSURL? {
    return NSURL(string: "?timestamp=\(timestamp)", relativeToURL: url)
}

func hashedURL(url: NSURL) -> NSURL? {
    let urlString = url.absoluteString + "&secureHash=\(secureHash)"
    return NSURL(string: urlString)
}

infix operator >>- {
    associativity left
    precedence 150
}

func >>-<T, U>(value: T?, f: T -> U?) -> U? {
    return value.flatMap(f)
}

let employeesURL = NSURL(string: "Employees", relativeToURL: baseURL) >>- timestampedURL >>- hashedURL
print(employeesURL?.absoluteString)

let inventoryURL = NSURL(string: "Inventory", relativeToURL: baseURL) >>- timestampedURL >>- hashedURL
print(inventoryURL?.absoluteString)
