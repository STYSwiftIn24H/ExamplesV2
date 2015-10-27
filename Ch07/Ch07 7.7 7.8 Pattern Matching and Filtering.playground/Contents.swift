
// Listing 7.7
let beatles = ["Paul", "John", "Ringo", "George"]
var ringoIndex = 0

for (index, name) in beatles.enumerate() where name == "Ringo" {
    //    if name == "Ringo" {
    ringoIndex = index
    //    }
}
print("Ringo is at index \(ringoIndex) in the beatles array")


// Listing 7.8
let albums = [("Twist and Shout", 1964), ("A Hard Day's Night", 1964), ("Yellow Submarine", 1969), ("Let It Be", 1970)]
for case let (album, 1964) in albums {
    print("\(album) came out in 1964")
}

