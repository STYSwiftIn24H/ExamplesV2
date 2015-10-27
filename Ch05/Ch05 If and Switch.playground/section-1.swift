
import Foundation


// Listing 5.3
let valueToCheck = true
if valueToCheck {
    print("valueToCheck is true")
} else {
    print("valueToCheck is false")
}


// Listing 5.4
let myColor = "blue"
if myColor == "red" {
    print("Stop signs are red")
} else if myColor == "blue" {
    print("The sky is blue in Ohio...sometimes")
} else {
    print("I don't know what color myColor is")
}


// Listing 5.5
let salary = 50000
let bonus = 10000
var totalPay = 0
let employeeShouldReceiveABonus = true

// the following code is a traditional if block
if employeeShouldReceiveABonus {
    totalPay = salary + bonus
} else {
    totalPay = salary
}

// the following code is a ternary conditional operation replacing lines 7-11 above
totalPay = (employeeShouldReceiveABonus) ? salary + bonus : salary


// Listing 5.6
let randomNumber = arc4random() % 10
var result = ""
switch randomNumber {
case 0:
    result = "Zero is the first index in an array"
case 1:
    result = "One is the loneliest number..."
default:
    result = "Our random number is \(randomNumber)"
}

result



// Listing 5.7
let farmAnimal = "chicken"
switch farmAnimal {
case "cow", "pig", "goat":
    print("cow, pig, or goat was matched")
case "chicken", "rooster":
    print("chicken or rooster was matched")
default:
    print("unrecognized farm animal")
}


// Listing 5.8
let carInventory = ("Ford", 55)

switch carInventory {
case (_, 50...100):
    "We have too many \(carInventory.0) cars. Sell! Sell! Sell!"
case (let make, 0...20):
    "We are low on \(make). Buy more inventory."
case ("Ford", let num):
    "We have \(num) Fords in stock."
default:
    "Unrecognized make"
}


// Listing 5.9
let wordTuple = ("car", 2)

switch wordTuple {
case let (word, amount) where amount == 1:
    "You have \(amount) \(word)."
case let (word, amount) where amount == 0:
    "You have no \(word)s"
case let (word, amount):
    "You have \(amount) \(word)s"
}


// Break example
let someValue = 0
switch someValue {
case 0:
    "someValue is 0."
    break
default:
    break
}
"I am executed immeidately following the break statement"

// Falltrough example
let anotherValue = 0
switch anotherValue {
case 0..<20:
    "\(anotherValue) is between 0 and 19"
    fallthrough
case 10..<20:
    "\(anotherValue) is between 10 and 19"
default:
    "default branch."
}

// Listing 5.10
let age = 34
if case 0..<50 = age {
    "you're younger than 50"
}

if case 30..<40 = age where age % 2 == 0 {
    "You're in your thirties and your age is even"
}
