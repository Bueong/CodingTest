func solution(_ s:String) -> String {
    var resultStr = s.map { String($0) }
    return s.count % 2 == 1 ? resultStr[s.count / 2] : "\(resultStr[s.count / 2 - 1])\(resultStr[s.count / 2])"
}