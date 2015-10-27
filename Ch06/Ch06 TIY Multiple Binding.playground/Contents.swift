
// Hour 6 TIY

var username: String?
var password: String?
var ableToLogin = true // adjust to see different results. This could be `let` but I chose `var` as in an actual application its value may change depending on other calculations

username = "e14052729082"
password = "1qaz2wsx"

if ableToLogin,
    let unwrappedUsername = username where unwrappedUsername.characters.count >= 10 && unwrappedUsername.hasPrefix("e"),
    let unwrappedPassword = password where unwrappedPassword.characters.count >= 8 {
        print("\(unwrappedUsername) and \(unwrappedPassword) are valid.")
} else {
    print("Please enter valid input.")
}
