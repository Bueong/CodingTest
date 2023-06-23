func solution(_ seoul:[String]) -> String {
    var index = seoul.enumerated().filter { $0.element == "Kim" }.map { $0.offset }[0]
    return "김서방은 \(index)에 있다"
}