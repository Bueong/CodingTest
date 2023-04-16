import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var scoreDict: [Character: Int] = [
        "R" : 0, "T" : 0,
        "C" : 0, "F" : 0,
        "J" : 0, "M" : 0,
        "A" : 0, "N" : 0
    ]
    var result = ""

    for i in 0..<survey.count {
        let first: Character = survey[i].first!
        let last: Character = survey[i].last!
        
        switch choices[i] {
        case 1...3 :
            scoreDict[first] = scoreDict[first]! + (4 - choices[i])
        case 5...7 :
            scoreDict[last] = scoreDict[last]! + (choices[i] - 4)
        default :
            break
        }
    }

    result += scoreDict["R"]! >= scoreDict["T"]! ? "R" : "T"
    result += scoreDict["C"]! >= scoreDict["F"]! ? "C" : "F"
    result += scoreDict["J"]! >= scoreDict["M"]! ? "J" : "M"
    result += scoreDict["A"]! >= scoreDict["N"]! ? "A" : "N"

    return result
}
