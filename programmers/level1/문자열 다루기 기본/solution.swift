func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && s == s.filter {$0.isNumber}.map {String($0)}.joined()
}