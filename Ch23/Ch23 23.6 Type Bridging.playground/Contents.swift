//: Playground - noun: a place where people can play

import Foundation

let nsString: NSString = "Hello, I'm an NSString"
let string: String = "Hi, I'm a String"

func funcThatTakesAnNSString(text: NSString) { print(text) }

func funcThatTakesAString(text: String) { print(text) }

funcThatTakesAnNSString(string)
funcThatTakesAString(nsString as String)
