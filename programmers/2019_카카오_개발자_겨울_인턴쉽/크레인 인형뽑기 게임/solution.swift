import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var mutableBoard = board
    var resultStack: [Int] = []
    var result = 0
    
    for i in moves {
        for j in 0..<board.count {
            guard mutableBoard[j][i-1] != 0 else { continue }
            
            if !resultStack.isEmpty && resultStack.last == mutableBoard[j][i-1] {
                resultStack.popLast()
                mutableBoard[j][i-1] = 0
                result += 2
                break
            } else {
                resultStack.append(mutableBoard[j][i-1])
                mutableBoard[j][i-1] = 0
                break
            }
        }
    }
    
    return result
}