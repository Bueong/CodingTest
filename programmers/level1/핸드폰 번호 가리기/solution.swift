func solution(_ phone_number:String) -> String {
    var phoneNum = phone_number.map { String($0) }
    var result = ""
    for i in 0..<phone_number.count {
        if i < phone_number.count - 4 {
            result += "*"
        } else {
            result += phoneNum[i]
        }
    }
    return result
}