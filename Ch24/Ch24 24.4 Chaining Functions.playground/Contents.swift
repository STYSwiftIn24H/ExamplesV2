
// Listing 24.4
let arrayOfStrings = ["1.1", "2.0", "three point one four", "4.7"]

let doubles = arrayOfStrings
    .map({ Double($0) })
    .filter({ $0 != nil })
    .map({ $0!})

doubles

