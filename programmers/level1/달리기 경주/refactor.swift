import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result: [String] = players
    var allPlayer: [String: Int] = Dictionary(uniqueKeysWithValues: players.enumerated().map { ($1, $0)})
    
    for passedPlayer in callings {
        let playerIdx = allPlayer[passedPlayer]!
        let frontPlayer = result[playerIdx-1]
        result.swapAt(playerIdx, playerIdx-1)
        
        allPlayer[passedPlayer]! -= 1
        allPlayer[frontPlayer]! += 1
    }
    return result
}