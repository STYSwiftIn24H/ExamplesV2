//: Playground - noun: a place where people can play

func printAnEvenNumber(number: Int?) {
    guard let unwrappedNumber = number else { return }
    guard unwrappedNumber < 100 else { return }
    
    if unwrappedNumber % 2 == 0 {
        print("\(unwrappedNumber)")
    }
}

printAnEvenNumber(nil)
printAnEvenNumber(101)
printAnEvenNumber(5)
printAnEvenNumber(4)