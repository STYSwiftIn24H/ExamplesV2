//: Playground - noun: a place where people can play

protocol DeviceType {
    var title: String { get }
}

struct iPhone: DeviceType {
    let model: String
    var title: String { return "iPhone \(model)" }
}

let i6Plus = iPhone(model: "6 Plus")
let i6 = iPhone(model: "6")

let alliPhonesAsProtocolType: [DeviceType] = [i6Plus, i6]
let alliPhones = alliPhonesAsProtocolType.map { $0 as! iPhone }
alliPhones
