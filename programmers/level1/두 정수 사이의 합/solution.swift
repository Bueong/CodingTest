func solution(_ a:Int, _ b:Int) -> Int64 {
    guard a != b else { return Int64(a) }
    return a < b ? Int64((a...b).reduce(0, +)) : Int64((b...a).reduce(0, +))
}