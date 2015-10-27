//: Playground - noun: a place where people can play

protocol Rentable {
    var title: String { get }
    var barcode: String { get set }
}

struct Book : Rentable {
    let title: String
    var barcode: String
    let chapterCount: Int
}

struct DVD : Rentable {
    let title: String
    var barcode: String
    let lengthInMinutes: Int
}

struct AudioCD : Rentable {
    let title: String
    var barcode: String
    let audioTracks: Int
}

let book1 = Book(title: "Sams Teach Yourself Swift in 24 Hours", barcode: "9780672337246", chapterCount: 24)
let book2 = Book(title: "Design Patterns", barcode: "0201633612", chapterCount: 6)
let dvd1 = DVD(title: "The Wizard of Oz", barcode: "883929087334", lengthInMinutes: 102)
let dvd2 = DVD(title: "Gladiator", barcode: "883929304127", lengthInMinutes: 155)
let cd1 = AudioCD(title: "Compton", barcode: "111", audioTracks: 16)
let cd2 = AudioCD(title: "1989", barcode: "222", audioTracks: 13)

func displayAnyTitle(rentables: [Rentable]) {
    rentables.forEach { print($0.title) }
}

func displayTitleForOneType<T: Rentable>(rentables: [T]) {
    rentables.forEach { print($0.title) }
}

let all: [Rentable] = [book1, book2, dvd1, dvd2, cd1, cd2]
let books = [book1, book2]
let rentableBooks: [Rentable] = [book1, book2]
displayAnyTitle(all)
print("")
displayTitleForOneType(books)
//displayTitleForOneType(all)
//displayTitleForOneType(rentableBooks)
