class Employee {
    let name: String
    var email: Email!
    init(name: String, emailAddress: String) {
        self.name = name
        self.email = Email(address: emailAddress, employee: self)
        print("\(name) is being initialized.")
    }
    deinit {
        print("\(name) is being deinitialized.")
    }
}

class Email {
    var address: String
    var server = "imap.company.com"
    unowned var employee: Employee
    init(address: String, employee: Employee) {
        self.address = address
        self.employee = employee
        print("\(address) is being initialized.")
    }
    deinit {
        print("\(address) is being deinitialized.")
    }
}

var employee: Employee? = Employee(name: "BJ", emailAddress: "BJ@company.com")
employee = nil
