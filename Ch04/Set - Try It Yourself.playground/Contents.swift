
let odd = Set([1, 3, 5, 7])
let even = Set([2, 4, 6, 8])
let firstTen = Set(1...10)
let oddToTwenty = Set([1, 3, 5, 7, 9, 11, 13, 15, 17, 19])

let union = odd.union(even)
let intersection = odd.intersect(even)
let oddToTen = firstTen.intersect(oddToTwenty)

odd.isSubsetOf(firstTen)
odd.isSubsetOf(even)
oddToTwenty.isSupersetOf(oddToTen)

even.isDisjointWith(odd)
even.isDisjointWith(firstTen)
oddToTwenty.exclusiveOr(firstTen)
