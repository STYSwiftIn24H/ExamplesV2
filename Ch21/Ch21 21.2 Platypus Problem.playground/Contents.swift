//: Playground - noun: a place where people can play

protocol MammalType {
    var name: String { get }
    var givesLiveBirth: Bool { get }
}

protocol LiveBirthable {
    var pregnancyTermInWeeks: Int { get }
}

protocol EggLayable {
    var clutchSize: Int { get }
}

struct Lion : MammalType, LiveBirthable {
    let name: String
    let givesLiveBirth = true
    var pregnancyTermInWeeks: Int { return 15 }
}

struct Human : MammalType, LiveBirthable {
    let name: String
    let givesLiveBirth = true
    var pregnancyTermInWeeks: Int { return 40 }
}

struct Platypus: MammalType, EggLayable {
    let name: String
    let givesLiveBirth = false
    var clutchSize: Int { return 3 }
}

Lion(name: "Lucy").givesLiveBirth
Human(name: "Hazel").givesLiveBirth
Platypus(name: "Patty").givesLiveBirth
