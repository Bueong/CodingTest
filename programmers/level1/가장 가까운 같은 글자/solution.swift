import Foundation

func solution(_ s:String) -> [Int] {
    var stringArr: [Character] = []
    var result: [Int] = []
    
    for i in s {
        if stringArr.contains(i) {
            var distance = stringArr.count - stringArr.lastIndex(of: i)!
            result.append(distance)
        } else {
            result.append(-1)
        }
        stringArr.append(i)
    }
    
    return result
}