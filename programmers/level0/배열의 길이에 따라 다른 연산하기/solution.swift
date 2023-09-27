import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var evenResult = arr.enumerated().map { $0.offset % 2 == 0 ? $0.element + n : $0.element }
    var oddResult = arr.enumerated().map { $0.offset % 2 == 1 ? $0.element + n : $0.element }
    
    return arr.count % 2 == 1 ? evenResult : oddResult
}