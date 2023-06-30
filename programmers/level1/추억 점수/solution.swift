import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var scoreDict: [String: Int] = [:]
    var result: [Int] = []
    
    for i in 0..<name.count {
        var key = name[i]
        scoreDict[key] = yearning[i]
    }
    
    for i in photo {
        var score = 0
        for j in i {
            if name.contains(j) {
                score += scoreDict[j]!
            }
        }
        result.append(score)
    }
    
    return result
}