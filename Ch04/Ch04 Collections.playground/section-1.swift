var myArray = ["Foo", "Bar", "Baz"]

myArray

myArray[1]

myArray[0] = "dog"
myArray


// Listing 4.1
var tasks = [String]()
tasks = ["Clean house", "Walk dog"]
tasks.append("Wash the car")
print(tasks)

// Listing 4.2
tasks += ["Milk the cow"]
tasks += ["Rake leaves", "Mow lawn"]
tasks.count

// Listing 4.3
tasks.insert("Take a shower", atIndex: 4)
tasks



tasks[1] = "Walk Boudreau"
tasks[2...4] = ["Daily routine"]
tasks

// Hour 4 TIY #2
tasks.removeAtIndex(0)
tasks.removeLast()
tasks.removeAll(keepCapacity: false)
tasks
tasks = []
tasks


// Listing 4.4
var myDictionary: [String : Double] = ["pi" : 3.14]

// Listing 4.5
var specialNumbers = ["pi" : 3.14, "gravity" : 9.8]

// Listing 4.6
specialNumbers["this year"] = 2015
specialNumbers.updateValue(2014, forKey: "last year")
specialNumbers

// Listing 4.7
specialNumbers["this year"] = nil
specialNumbers.removeValueForKey("last year")

specialNumbers.keys.array
specialNumbers.values.array


// Sets
// Listing 4.8
let firstSet: Set<Int> = [1, 2, 3]
let hyrulianWarning: Array<String> = ["It's", "dangerous", "to", "go", "alone!", "Take"]
var hyrulianSet = Set(hyrulianWarning)

// Listing 4.9
hyrulianSet.insert("this.")
hyrulianSet.insert("It's")
hyrulianSet.insert("a")
hyrulianSet.insert("secret")
hyrulianSet.insert("to")
hyrulianSet.insert("everybody.")

let dataSource = Array(hyrulianSet)
let first = hyrulianSet.first

// Listing 4.10
hyrulianSet.remove("dangerous")
hyrulianSet  // see "dangerous" has been removed from the set
let takeIndex = hyrulianSet.indexOf("Take")
hyrulianSet.removeAtIndex(takeIndex!)
hyrulianSet.removeFirst()
hyrulianSet.removeAll()


// Tuples
// Listing 4.11
let anArray = ["Mary", "had", "a", "little", "lamb"]
let aDictionary = ["fleece color" : "white as snow", "Mary's location" : "lamb was sure to go"]
for (index, value) in anArray.enumerate() {
    print("Index: \(index), value: \(value)")
}
for (key, value) in aDictionary {
    print("Key: \(key), value: \(value)")
}

