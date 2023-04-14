import Foundation

func solution( box:[Int],  n:Int) -> Int {
    var result = 1

    for i in box {
        result *= i / n
    }

    return result
}