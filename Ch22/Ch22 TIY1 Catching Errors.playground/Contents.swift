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

do {
    let response = try processNetworkResponse("cletus", code: 401)
    print(response)
} catch NetworkError.BadRequest {
    print("Hold up! Fix your syntax!")
} catch NetworkError.Unauthorized(let username) {
    print("\(username) couldn't log in")
} catch {
    print(error)
}
