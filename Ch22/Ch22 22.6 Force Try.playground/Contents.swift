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

let success = try! processNetworkResponse("cletus", code: 200)
print(success)