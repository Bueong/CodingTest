func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().map {$0.wholeNumberValue!}
}