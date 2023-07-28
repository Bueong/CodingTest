func solution(_ arr:[Int]) -> [Int] {
    guard arr.count != 1 else { return [-1] }
    var minNum = arr[0]
    for i in arr {
        if i < minNum { minNum = i }
    }
    var result = arr.filter {$0 > minNum}
    return result
}