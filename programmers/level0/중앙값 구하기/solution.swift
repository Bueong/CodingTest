import Foundation

func solution(_ array:[Int]) -> Int {
    let result = array.sorted()
    return result[Int(result.count / 2)]
}