class MathFunction {
    var firstNum: Int
    var secondNum: Int
    
    lazy var multiply: () -> Int = { [unowned self] in
        return self.firstNum * self.secondNum
    }
    
    init(firstNum: Int, secondNum: Int) {
        self.firstNum = firstNum
        self.secondNum = secondNum
        print("initializing.")
    }
    
    deinit {
        print("deinitializing.")
    }
}

var math: MathFunction? = MathFunction(firstNum: 3, secondNum: 5)
print(math!.multiply())
math = nil
