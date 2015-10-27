enum Result {
    case Success(String)
    case Failure(Int)
    
    func description() -> String {
        switch self {
        case .Success(let value):
            return "Successful. Value: \(value)"
        case .Failure(let value):
            return "Failed. Error code: \(value)"
        }
    }
}

var result = Result.Success("Response from web service successful!")
print(result.description())
result = Result.Failure(404)
print(result.description())
