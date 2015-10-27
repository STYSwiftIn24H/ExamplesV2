//: Playground - noun: a place where people can play
import UIKit


enum NumberError:ErrorType {
    case ExceededInt32Max
}

func functionWithCallback(callback:(Int) throws -> Int) rethrows {
    try callback(Int(Int32.max)+1)
}

do {
    try functionWithCallback({v in
        if v <= Int(Int32.max) {
            return v
        }
        throw NumberError.ExceededInt32Max
    })
}
catch NumberError.ExceededInt32Max {
    "Error: exceeds Int32 maximum"
}
catch {
}
/*
enum NetworkError: ErrorType {
    case BadRequest
    case Unauthorized(String)
    case Forbidden
    case NotFound
}

struct FileError: ErrorType {
    let code: Int
    let description: String
}


func processNetworkResponse(username: String, code: Int) throws -> String {
    switch code {
    case 400:
        throw NetworkError.BadRequest
    case 401:
        throw NetworkError.Unauthorized(username)
    case 403:
        throw NetworkError.Forbidden
    case 404:
        throw NetworkError.NotFound
    case 406:
        throw NSError(domain: "my domain", code: 406, userInfo: nil)
    default:
        return "OK!"
    }
}

do {
    let responseString = try processNetworkResponse("janedoe", code: 406)
    print("responseString is \(responseString)")
}
catch NetworkError.BadRequest { print("bad request") }
catch NetworkError.NotFound { print("not found") }
catch { print("error \(error)") }
*/



/*
import Foundation

enum Error: ErrorType {
    case Unlucky
}

func myFailableFunction() throws -> String {
    let success = arc4random_uniform(5)
    if success == 0 { throw Error.Unlucky }
    return "Success"
}

do {
    try (1...3).forEach { _ in try myFailableFunction() }
    print("Success")
} catch { print(error) }

*/
