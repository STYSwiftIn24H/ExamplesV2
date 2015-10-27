enum iPhoneModel: String {
    case iPhone5C = "iPhone 5C", iPhone5S = "iPhone 5S", iPhone6 = "iPhone 6", iPhone6Plus = "iPhone 6 Plus"
}

class Phone {
    let model: iPhoneModel
    var owner: Person?
    init(model: iPhoneModel) {
        self.model = model
        print("\(model.rawValue) is being initialized.")
    }
    deinit {
        print("\(model.rawValue) is deinitializing")
    }
}

class Person {
    let name: String
    var phone: Phone?
    init(name: String) {
        self.name = name
        print("\(name) is being initialized.")
    }
    deinit {
        print("\(name) is deinitializing")
    }
}

var aPerson: Person?
var aPhone: Phone?

aPerson = Person(name: "Steve")
aPhone = Phone(model: .iPhone6)

aPerson?.phone = aPhone
aPhone?.owner = aPerson

aPerson = nil
aPhone = nil
