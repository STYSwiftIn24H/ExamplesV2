struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T? {
        guard !items.isEmpty else { return nil }
        return items.removeLast()
    }
}

var myIntStack = Stack<Int>()
var myStringStack = Stack<String>()
//var myCustomStack = Stack<SomeCustomType>()  // just an example

myIntStack.push(5)
myIntStack.push(7)
myIntStack.push(9)
let poppedNum1 = myIntStack.pop()
let poppedNum2 = myIntStack.pop()
let poppedNum3 = myIntStack.pop()
let poppedNum4 = myIntStack.pop()
