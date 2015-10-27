// Ch21 Try It Yourself 1 - Overriding Defined Defaults

protocol SomeProtocol {
    func funcOne()
}

extension SomeProtocol {
    func funcOne() {
        print("default funcOne")
    }
    func funcTwo() {
        print("default funcTwo")
    }
}

struct SomeType : SomeProtocol {
    func funcOne() {
        print("customized funcOne")
    }
    func funcTwo() {
        print("customized funcTwo")
    }
}

let someInstanceA = SomeType()
someInstanceA.funcOne()
someInstanceA.funcTwo()

let someInstanceB: SomeProtocol = SomeType()
someInstanceB.funcOne()
someInstanceB.funcTwo()
