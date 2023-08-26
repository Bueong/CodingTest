import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    
    String(n).map { answer += $0.wholeNumberValue! }
    
    return answer
}