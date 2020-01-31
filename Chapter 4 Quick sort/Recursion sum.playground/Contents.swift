func sum(of array: [Int]) -> Int {
    var tempArray = array
    if array.count == 0 {
        return 0
    } else if array.count == 1 {
        return array[0]
    } else {
        return tempArray.removeFirst() + sum(of: tempArray)
    }
}

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
sum(of: array)
print(array)
