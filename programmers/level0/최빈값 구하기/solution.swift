import Foundation

func solution(_ array:[Int]) -> Int {
    var resultDict: [Int: Int] = [:]
    var result = 0
    var count = 0
    for i in array {
        if !resultDict.keys.contains(i) {
            resultDict.updateValue(1, forKey: i)
            continue
        }
        resultDict[i]! += 1
    }
    
    for i in resultDict {
        if resultDict.values.max() == i.value {
            count += 1
            if count >= 2 { return -1 }
            result = i.key
        }
    }
    
    return result
}