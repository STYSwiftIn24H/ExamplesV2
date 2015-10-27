
struct Queue<T: Equatable> {
    private var items = [T]()
    var count: Int { return items.count }
    
    mutating func enqueue(item: T) {
        guard items.contains({ $0 == item }) == false else { return }
        items.insert(item, atIndex: 0)
    }
    
    mutating func dequeue() -> T? {
        guard items.count > 0 else { return nil }
        return items.removeLast()
    }
}

extension Queue {
    init(array: [T]) {
        self.init()
        array.reverse().forEach { self.enqueue($0) }
    }
}

protocol Flushable {
    typealias ItemType
    mutating func flush(afterNthElementFromFront index: Int) -> [ItemType]
}

protocol CollectionItemInspectable {
    typealias ItemType
    func placementFromFrontForElement(element: ItemType) -> Int?
}

extension Queue: Flushable {
    typealias ItemType = T
    mutating func flush(afterNthElementFromFront index: Int) -> [ItemType] {
        let position = items.count - index
        let result = Array(items[0..<position])
        items[0..<position] = []
        return result
    }
}

extension Queue: CollectionItemInspectable {
    func placementFromFrontForElement(element: ItemType) -> Int? {
        guard let foundIndex = items.indexOf(element) else { return nil }
        return (items.count - 1) - foundIndex
    }
}

var queue = Queue<Int>(array: [1, 2, 3, 4, 5, 6, 7])
queue.flush(afterNthElementFromFront: 2)

queue.items

queue.placementFromFrontForElement(6)
