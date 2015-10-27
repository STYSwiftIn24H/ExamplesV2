protocol ProtocolFoo {
    func foo()
}
protocol ProtocolBar {
    func bar()
}

struct Foo: ProtocolFoo, ProtocolBar {
    func foo() {
        print("foo")
    }
    func bar() {
        print("bar")
    }
}

func someMethod(composedProperty: protocol<ProtocolFoo, ProtocolBar>) {
    composedProperty.foo()
    composedProperty.bar()
}

let foo = Foo()
someMethod(foo)