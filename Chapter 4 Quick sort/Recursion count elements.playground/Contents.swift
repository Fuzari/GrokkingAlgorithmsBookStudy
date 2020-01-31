func count(of array: [Int]) -> Int {
    if array.isEmpty {
        return 0
    } else {
        return 1 + count(of: array.dropLast(1))
    }
}

let array = [1, 3, 4, 6, 7, 8]
count(of: array)
