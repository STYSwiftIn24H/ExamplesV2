extension String {
    var asArray: [Character] {
        return self.characters.reduce([]) { $0 + [$1] }
    }
}

let chars = "Hello".asArray
let dog = "Fido"
let dogChars = dog.asArray
