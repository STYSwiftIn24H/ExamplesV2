class AClass {
    class func aClassMethod() {
        print("I am a class method")
    }
    class func bClassMethod() {
        aClassMethod()  // no need to prefix with class name if calling another class method
    }
    func anInstanceMethod() {
        print("anInstanceMethod. Calling bClassMethod().")
        AClass.bClassMethod()
    }
}

class BClass: AClass {
    override class func aClassMethod() {
        print("I am an overridden class method in BClass")
    }
}

AClass.aClassMethod()

let aClass = AClass()
aClass.anInstanceMethod()

BClass.aClassMethod()
