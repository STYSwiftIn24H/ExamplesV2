//: Playground - noun: a place where people can play

protocol MammalType {
    var name: String { get }
    var givesLiveBirth: Bool { get }
}

extension MammalType where Self : LiveBirthable {
    var givesLiveBirth: Bool { return true }
}

extension MammalType where Self : EggLayable {
    var givesLiveBirth: Bool { return false }
}

protocol LiveBirthable {
    var pregnancyTermInWeeks: Int { get }
}

protocol EggLayable {
    var clutchSize: Int { get }
}

struct Lion : MammalType, LiveBirthable {
    let name: String
    var pregnancyTermInWeeks: Int { return 15 }
}

struct Human : MammalType, LiveBirthable {
    let name: String
    var pregnancyTermInWeeks: Int { return 40 }
}

struct Platypus: MammalType, EggLayable {
    let name: String
    var clutchSize: Int { return 3 }
}

Lion(name: "Lucy").givesLiveBirth
Human(name: "Hazel").givesLiveBirth
Platypus(name: "Patty").givesLiveBirth
