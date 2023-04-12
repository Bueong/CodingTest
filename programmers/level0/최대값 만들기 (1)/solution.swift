import Foundation

func solution(_ numbers:[Int]) -> Int {
    var max: Int = 0
    
    for i in 0..<numbers.count {
        for j in 0..<numbers.count {
            guard i != j else { continue }
            if max < numbers[i] * numbers[j] {
                max = numbers[i] * numbers[j]
            }
        }
    }
    return max
}