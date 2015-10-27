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

let items = [1, 2, 3, 3, 3, 4, 5]
let queue = Queue(array: items)
queue.items