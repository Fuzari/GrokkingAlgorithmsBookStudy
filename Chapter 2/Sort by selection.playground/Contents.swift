func getIndexOf(element: Int, in array: [Int]) -> Int?{
    
    for i in 0..<array.count {
        if array[i] == element {
            return i
        }
    }
    return nil
}

// Сортировка по убыванию / Sort Descending
func sortBySelection(array: inout [Int]) -> [Int]{
    var resultArray: [Int] = []
    
    for _ in 0..<array.count {
        let max = array.max()
        if let index = getIndexOf(element: max!, in: array) {
            resultArray.append(array.remove(at: index))
        }
    }
    
    return resultArray
}

var array = [34, 5, 1, 6, 0, 3, 3]
sortBySelection(array: &array)
