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

var queue: Queue<String> = Queue()
queue.enqueue("iPhone")
queue.enqueue("iPhone")
queue.enqueue("new")
queue.enqueue("a")
queue.enqueue("need")
queue.enqueue("I")
queue.items
queue.count

var emptyQueue = Queue<Bool>()
let emptyItem = emptyQueue.dequeue()
