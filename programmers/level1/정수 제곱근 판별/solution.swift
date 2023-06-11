import Foundation
func solution(_ n:Int64) -> Int64 {
    var root = Int64(sqrt(Double(n)))
    if root * root == n {
        return (root+1) * (root+1)
    }
    return -1
}