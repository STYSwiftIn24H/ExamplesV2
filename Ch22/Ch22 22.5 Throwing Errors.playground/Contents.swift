//: Playground - noun: a place where people can play

enum NetworkError: ErrorType {
    case BadRequest
    case Unauthorized(String)
    case Forbidden
    case NotFound
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
    default:
        return "OK!"
    }
}

