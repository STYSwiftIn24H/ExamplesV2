
// SequenceType
extension SequenceType {
    func styMap<T>(@noescape transform: (Self.Generator.Element) -> T) -> [T] {
        var generator = self.generate()
        var result = [T]()
        while let element = generator.next() {
            result.append(transform(element))
        }
        return result
    }
}

let names = ["larry", "my brother darryl", "my other brother darryl"]
let upNames = names.styMap { $0.uppercaseString }
upNames      // displays names in all caps

// Optional
extension Optional {
    func styMap<U>(@noescape f: (Wrapped) -> U) -> U? {
        switch self {
        case .None: return nil
        case .Some(let x): return f(x)
        }
    }
}

let optionalOne: Int? = 1
let optionalNegativeOne: Int? = -1
let maybeOne = optionalOne.map { $0 > 0 }
let maybeNegOne = optionalNegativeOne.map { $0 > 0 }
maybeOne
maybeNegOne
