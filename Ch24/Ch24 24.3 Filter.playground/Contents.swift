var fooDictionary = ["fooOne" : 1, "two" : 2, "fooThree" : 3]
let foos = fooDictionary.keys.filter { $0.characters.startsWith("foo".characters) }
Array(foos)

let divisibleByTwo = fooDictionary.values.filter { $0 % 2 == 0 }
Array(divisibleByTwo)
