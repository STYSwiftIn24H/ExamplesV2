import Swift

// Listing 24.5
let arrayOfStrings = ["1.1", "2.0", "three point one four", "4.7"]
let flattenedDoubles = arrayOfStrings.flatMap({ Double($0) })
flattenedDoubles