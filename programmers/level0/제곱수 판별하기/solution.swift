import Foundation

func solution(_ n:Int) -> Int {
    let squareNum = Int(sqrt(Double(n)))
    
    return squareNum * squareNum == n ? 1 : 2          
}