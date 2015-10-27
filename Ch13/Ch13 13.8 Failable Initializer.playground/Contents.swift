//: Playground - noun: a place where people can play

enum AppleWatch : String {
    case Large = "42 mm", Small = "38 mm"
    
    init?(watchSize: String) {
        if watchSize == "38 mm" {
            self = .Small
        } else if watchSize == "42 mm" {
            self = .Large
        } else {
            return nil
        }
    }
}

let goodWatch = AppleWatch(watchSize: "42 mm")
let badWatch = AppleWatch(watchSize: "40 mm")
