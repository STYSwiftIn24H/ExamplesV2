class Person {
    var dog: Dog?
}

class Dog {
    let name: String
    init(name: String) { self.name = name }
}

let susie = Person()
let dogsName = susie.dog?.name
