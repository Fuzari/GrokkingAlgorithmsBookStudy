func factorial(of digit: Int) -> Int {
    if digit == 1 {
        return 1
    } else {
        return digit * factorial(of: digit - 1)
    }
}

factorial(of: 7)
