enum MyError: ErrorType {
    case Foo
}

protocol ProcessDelegate {
    func didBeginProcess()
    func didEndProcess()
}

struct Handler: ProcessDelegate {
    func didBeginProcess() { print("starting") }
    func didEndProcess() { print("ending") }
}

struct SomeStruct {
    var delegate: ProcessDelegate?
    func methodThatCanThrow(shouldThrow shouldThrow: Bool) throws -> String {
        delegate?.didBeginProcess()
        defer {
            delegate?.didEndProcess()
        }
        if shouldThrow {
            throw MyError.Foo
        }
        return "too much foo!"
    }
}

let someValue = SomeStruct(delegate: Handler())
do {
    let result = try someValue.methodThatCanThrow(shouldThrow: false)
    print(result)
} catch {
    print(error)
}