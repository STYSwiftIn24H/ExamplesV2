import Foundation

// Try It Yourself section
var timesRolled = 0
var rollOne: Int
var rollTwo: Int

repeat {
    rollOne = Int(arc4random_uniform(6)) + 1
    rollTwo = Int(arc4random_uniform(6)) + 1
    print("one: \(rollOne), two: \(rollTwo)")
    ++timesRolled
} while rollOne != rollTwo

print("You rolled the dice \(timesRolled) times to get matching dice values.")