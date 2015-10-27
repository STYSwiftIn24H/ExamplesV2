
// Listing 6.5

let jsonDictionary: [String : Any] = ["artist": "Incubus", "song": "Absolution Calling", "yearReleased": 2015]

if let artist = jsonDictionary["artist"],
    song = jsonDictionary["song"],
    yearReleased = jsonDictionary["yearReleased"] {
            print("\(song) by \(artist) was released in \(yearReleased)")
} else {
    print("some information was missing.")
}