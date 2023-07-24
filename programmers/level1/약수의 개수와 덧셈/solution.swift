import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    guard right != 1 else { return -1 }
    var result = 0
    for i in left...right {
        var divisor = 1
        for j in 1..<i {
            if i % j == 0 {
                divisor += 1
            }
        }
        if divisor % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    return result
}