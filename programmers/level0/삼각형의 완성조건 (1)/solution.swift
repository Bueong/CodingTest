import Foundation

func solution(_ sides:[Int]) -> Int {
    let result = sides.sorted()

    return  result[0] + result[1] > result[2] ? 1 : 2
}