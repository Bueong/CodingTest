import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = []
    for element in arr {
        for repeats in 0..<element {
            result.append(element)
        }
    }
    return result
}