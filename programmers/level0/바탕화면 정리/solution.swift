import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var startPoint = [wallpaper.count, wallpaper[0].count]
    var endPoint = [0, 0]
    var result: [Int] = []
    
    for (idxY, dataY) in wallpaper.enumerated() {
        for (idxX, dataX) in dataY.enumerated() {
            if dataX == "#" {
                if idxX < startPoint[1] { startPoint[1] = idxX }
                if idxY < startPoint[0] { startPoint[0] = idxY }
                if idxX > endPoint[1] { endPoint[1] = idxX }
                if idxY > endPoint[0] { endPoint[0] = idxY }
            }
        }
    }
    startPoint.map { result.append($0) }
    endPoint.map { result.append($0 + 1) }
    
    return result
}