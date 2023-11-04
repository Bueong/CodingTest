import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    
    let extraApples = score.count % m
    let apples = score.sorted(by: >)[0..<score.count - extraApples]
    
    for i in stride(from: 0, to: apples.count, by: m) {
        result += Array(apples[i..<i+m]).min()! * m
    }
    
    return result
}