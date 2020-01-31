
// Сортировка по возрастанию / Sort ascending
func quickSort(of array: [Int]) -> [Int] {
    if array.count < 2 {
        return array
    } else {
        let supportElement = array[array.count / 2]
        let lessArray = array.filter{$0 < supportElement}
        let equalArray = array.filter{ $0 == supportElement}
        let bigArray = array.filter{ $0 > supportElement}
        
        return quickSort(of: lessArray) + equalArray + quickSort(of: bigArray)
    }
}

var array = [3, 4, 1, 97, 3, 4, 7, 0, 2, 45, 1, 4]
quickSort(of: array)

