// Listing 13.7
struct Rectangle {
    var width: Double
    var height: Double
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    init() {
        self.init(width: 1.0, height: 2.0)
    }
}
print(Rectangle(width: 4.0, height: 6.0))
print(Rectangle())
