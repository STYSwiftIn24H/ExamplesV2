func unique<T: Hashable>(array: [T]) -> [T] {
    var results = [T : Int]() 
    array.forEach { results[$0] = 1 }
    return Array(results.keys)
}

let numbers = [-8, 0, 1, 3, -8, 5, 3]
let greetings = ["Aloha", "Hello", "Aloha", "Bonjour", "Ciao", "Ciao"]
let bools = [true, false, true]

let uniqueNumbers = unique(numbers)
let uniqueGreetings = unique(greetings)
let uniqueBools = unique(bools)

let doubles = [3.14,9.8,9.8,3.14]
unique(doubles)