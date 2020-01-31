func binarySearch(array: [Int], item: Int) -> Int? {
    var left = 0
    var right = array.count - 1
    while (left <= right) {
        let mid = (right + left) / 2
        if item == array[mid] {
            return mid
        } else if item < array[mid] {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return nil
}


var myArray = [1, 2, 3, 4, 5, 6, 7]
print(binarySearch(array: myArray, item: 7)!)
