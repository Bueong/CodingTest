import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    var result = 0
    
    if M * N != 1 {
        result = M * N - 1
    }
    
    return result
}