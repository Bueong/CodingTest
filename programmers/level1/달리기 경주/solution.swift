import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result: [String] = players
    var allPlayer: [String: Int] = [:]
    
    for (idx, player) in players.enumerated() {
        allPlayer.updateValue(idx, forKey: player)
    }
    
    for passedPlayer in callings {
        let playerIdx = allPlayer[passedPlayer]!
        let frontPlayer = result[playerIdx-1]
        result.swapAt(playerIdx, playerIdx-1)
        
        allPlayer[passedPlayer]! -= 1
        allPlayer[frontPlayer]! += 1
    }
    return result
}