//: Playground - noun: a place where people can play

struct Incrementor {
    let startValue: Int
    let byTwo: Bool
    init(startValue: Int, byTwo: Bool = false) {
        self.startValue = startValue
        self.byTwo = byTwo
    }
    func increment(times: Int) -> Int {
        var result = startValue
        for _ in 0..<times {
            result = byTwo ? result + 2 : result + 1
        }
        return result
    }
}

let incrementor = Incrementor(startValue: 1)
incrementor.increment(5)

let incByTwos = Incrementor(startValue: 1, byTwo: true)
incByTwos.increment(5)
