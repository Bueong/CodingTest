import Foundation

func solution(_ dot:[Int]) -> Int {
    var result = 0
    if dot[0] > 0 {
        result = dot[1] > 0 ? 1 : 4
    } else if dot[0] < 0 {
        result = dot[1] > 0 ? 2 : 3
    }

    return result
}