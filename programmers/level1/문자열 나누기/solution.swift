import Foundation

func solution(_ s:String) -> Int {
    var result: [String] = []
    var baseChar = ""
    var appendStr = ""
    var baseCount = 0
    var otherCount = 0
    
    for i in s.enumerated() {
        let char = String(i.element)
        guard !baseChar.isEmpty else {
            baseChar = char
            appendStr += char
            baseCount += 1
            if i.offset == s.count - 1 { result.append(appendStr) }
            continue
        }
        
        if char == baseChar {
            baseCount += 1
            appendStr += char
        } else {
            otherCount += 1
            appendStr += char
        }
        
        if baseCount == otherCount || i.offset == s.count - 1 {
            result.append(appendStr)
            baseChar = ""
            appendStr = ""
            baseCount = 0
            otherCount = 0
        }
    }
    print(result)
    return result.count
}