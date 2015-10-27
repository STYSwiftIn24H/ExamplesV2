//: Playground - noun: a place where people can play

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
