func solution(_ n:Int64) -> Int64 {
    var result = String(n).map {String($0)}.sorted(by:>).joined()
    return Int64(result)!
}