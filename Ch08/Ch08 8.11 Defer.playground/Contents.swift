//: Playground - noun: a place where people can play

func functionThatUsesDefer(value: Int?, anotherValue: String?) {
    defer {
        print("finally leaving the function")
    }
    
    if let value = value {
        print("value is \(value)")
        return
    }
    
    if let anotherValue = anotherValue {
        print("anotherValue is \(anotherValue)")
        return
    }
    
    for _ in 0..<10 {
        print("not going anywhere yet...")
    }
}

functionThatUsesDefer(5, anotherValue: nil)
functionThatUsesDefer(nil, anotherValue: "Hello")
functionThatUsesDefer(nil, anotherValue: nil)