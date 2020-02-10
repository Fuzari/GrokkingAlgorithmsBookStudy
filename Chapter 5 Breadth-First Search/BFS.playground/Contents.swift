func isMagngoDealer(name: String) -> Bool {
    if name.first == "M" {
        return true
    } else {
        return false
    }
}

var myGraph: [String:[String]] = [:]
myGraph["you"] = ["Alice", "Bob", "Alex"]
myGraph["Alice"] = ["Tom"]
myGraph["Bob"] = ["Jerry"]
myGraph["Alex"] = ["Michael"]
myGraph["Tom"] = []
myGraph["Jerry"] = []
myGraph["Michael"] = []

func search(name: String) -> Bool {
    var searched: [String] = []
    var queue: [String] = []
    queue.append(name)
    
    while !queue.isEmpty {
        let person = queue.removeFirst()
        if !searched.contains(person) {
            if isMagngoDealer(name: person) {
                print("\(person) is a mango dealer!")
                return true
            }
            else {
                searched.append(person)
                queue += myGraph[person]!
            }
        }
    }
    return false
}

search(name: "you")
