import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    if n % 2 == 0 {
        result = Array(0...n).filter {$0 % 2 == 0}.map {$0 * $0}.reduce(0, +)
    } else {
        result = Array(0...n).filter {$0 % 2 == 1}.reduce(0, +)
    }
    return result
}