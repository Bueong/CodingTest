import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var parkArr = [[String]]()
    var positionState = [0, 0]
    var impediments = [[Int]]()
    
    
    func routeLimitCheck(_ position: [Int], direction: String, count: String) -> [Int] {
        var changedState = position
        var interrupted = false
        for _ in 0..<Int(count)! {
            switch direction {
            case "N":
                if impediments.contains([changedState[0], changedState[1] - 1]) {
                    interrupted = true
                    break
                }
                changedState[1] -= 1
            case "E":
                if impediments.contains([changedState[0] + 1, changedState[1]]) {
                    interrupted = true
                    break
                }
                changedState[0] += 1
            case "S":
                if impediments.contains([changedState[0], changedState[1] + 1]) {
                    interrupted = true
                    break
                }
                changedState[1] += 1
            case "W":
                if impediments.contains([changedState[0] - 1, changedState[1]]) {
                    interrupted = true
                    break
                }
                changedState[0] -= 1
            default :
                break
            }
        }
        return interrupted ? position : changedState
    }
    
    // 2차원 배열로 전환
    for i in park {
        let arr = i.map { String($0) }
        parkArr.append(arr)
    }
    
    // S 및 장애물 탐색
    for i in 0..<parkArr.count {
        for j in 0..<parkArr[i].count {
            if parkArr[i][j] == "S" {
                positionState = [j, i]
            }
            if parkArr[i][j] == "X" {
                impediments.append([j, i])
            }
        }
    }
    
    // 작업 실행
    for i in routes {
        let route = i.components(separatedBy: " ")
        switch route.first! {
        case "N":
            guard positionState[1] - Int(route[1])! >= 0 else { break }
            positionState = routeLimitCheck(positionState, direction: route[0], count: route[1])
        case "E":
            guard positionState[0] + Int(route[1])! < parkArr[0].count else { break }
            positionState = routeLimitCheck(positionState, direction: route[0], count: route[1])
        case "S":
            guard positionState[1] + Int(route[1])! < parkArr[0].count else { break }
            positionState = routeLimitCheck(positionState, direction: route[0], count: route[1])
        case "W":
            guard positionState[0] - Int(route[1])! >= 0 else { break }
            positionState = routeLimitCheck(positionState, direction: route[0], count: route[1])
        default :
            break
        }
    }
    
    
    return [positionState[1], positionState[0]]
}