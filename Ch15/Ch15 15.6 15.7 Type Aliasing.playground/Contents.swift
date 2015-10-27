//
// Listing 15.6
//
typealias Vol = Int
var volume: Vol = 0

typealias JSONObject = [String : String]
typealias JSONArray = [JSONObject]


//
// Listing 15.7
//
typealias ArrayCompletion = ([Int]?) -> ()

func downloadLotsOfData(completion: ArrayCompletion) {
    var someData: [Int]?
    // download lots of data
    completion(someData)  // execute the completion handler
}
