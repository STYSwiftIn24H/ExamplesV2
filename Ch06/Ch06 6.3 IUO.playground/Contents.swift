
// Listing 6.3
var optionalInt: Int!
var myDictionary = ["life" : 32]
optionalInt = myDictionary.updateValue(42, forKey: "life")
let sixtyFour = optionalInt * 2
print(sixtyFour)
