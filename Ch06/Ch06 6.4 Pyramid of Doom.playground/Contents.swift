
// Listing 6.4

let jsonDictionary: [String : Any] = ["artist": "Incubus", "song": "Absolution Calling", "yearReleased": 2015]

if let artist = jsonDictionary["artist"] {
    if let song = jsonDictionary["song"] {
        if let yearReleased = jsonDictionary["yearReleased"] {
            print("\(song) by \(artist) was released in \(yearReleased)")
        }
    }
} else {
    print("some information was missing.")
}