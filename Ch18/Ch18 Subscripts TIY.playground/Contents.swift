extension String {
    var asArray: [Character] {
        return self.characters.reduce([]) { $0 + [$1] }
    }
}

extension String {
    subscript(index: Int) -> Character? {
        if case 0..<self.characters.count = index {
            return self.asArray[index]
        }
        return nil
    }
}

let words = "Cuyahoga River"
let fifthChar = words[4]!
let emptyString = ""
let badIndex = emptyString[0]
