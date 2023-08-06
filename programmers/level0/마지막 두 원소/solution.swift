import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = num_list
    var lastNum: Int {
        result[result.count - 1] > result[result.count - 2] ? result.last! - result[result.count - 2] : result.last! * 2
    }
    result.append(lastNum)
    return result
}