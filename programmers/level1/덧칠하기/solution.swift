import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var rollerRange = (section[0]..<section[0]+m)
    var result = 1
    
    for i in section {
        if !rollerRange.contains(i) {
            rollerRange = (i..<i+m)
            result += 1
        }
    }
    return result
}