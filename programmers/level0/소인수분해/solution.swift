import Foundation

func solution(_ n:Int) -> [Int] {
    var result: Set<Int> = []
    var remainNum = n
    for i in 2...n {
        while ( remainNum % i == 0) {
            result.insert(i)
            remainNum = remainNum / i
        }
    }
    
    return Array(result).sorted()
}