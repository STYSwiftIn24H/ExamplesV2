
// Listing 6.2
var optionalString: String? = "I'm a string."
if let unwrappedString = optionalString {
    print("unwrappedString is not nil, and equals \(unwrappedString)")
} else {
    print("optionalString contains nil")
}
