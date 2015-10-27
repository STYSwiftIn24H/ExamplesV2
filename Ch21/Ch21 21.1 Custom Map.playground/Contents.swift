//: Playground - noun: a place where people can play

extension CollectionType {
    func styMap<U>(transform: Self.Generator.Element -> U) -> [U] {
        var result: [U] = []
        self.forEach {
            result.append(transform($0))
        }
        return result
    }
}

let arrayResult = [1, 2, 3, 4].styMap { $0 * 2 }
arrayResult

var mySet: Set<Int> = [5, 9, 7, 6, 8]
let setResult = mySet.styMap { $0 * 2 }
setResult