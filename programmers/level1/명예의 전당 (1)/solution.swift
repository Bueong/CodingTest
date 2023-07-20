import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var scoreArr: [Int] = []
    var result: [Int] = []
    
    for i in score {
        scoreArr.append(i)
        scoreArr.sort(by: >)
        if scoreArr.count > k {
            scoreArr.removeLast()
        }
        result.append(scoreArr.last!)
    }
    
    return result
}