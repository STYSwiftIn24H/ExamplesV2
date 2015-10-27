//: Playground - noun: a place where people can play

import UIKit

struct Square {
    static var corners: Int {
        return 4
    }
}
Square.corners

class Shape {
    static var color: String = "Red"
    class var cornerAngle: Int {
        return 0
    }
    static var desc: String {
        return "shape description"
    }
}
Shape.cornerAngle

class Octogon: Shape {
    override class var cornerAngle: Int {
        return 360 / 8
    }
}
Octogon.cornerAngle
Octogon.desc
Octogon.color