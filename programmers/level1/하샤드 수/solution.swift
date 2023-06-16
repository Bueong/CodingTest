func solution(_ x:Int) -> Bool {
    var divideNum = String(x).map{ $0.wholeNumberValue! }.reduce(0, +)
    return x % divideNum == 0 ? true : false
}