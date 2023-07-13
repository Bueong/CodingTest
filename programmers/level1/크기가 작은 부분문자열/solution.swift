import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var tArr = t.map { String($0) }
    var pNum = Int(p)!
    var count = 0
    var result: [Int] = []
    
    while count + p.count <= tArr.count {
        let subStr = Int(tArr[count..<p.count + count].joined())!
        if pNum >= subStr {
            result.append(subStr)
        }
        count += 1
    }
    return result.count
}