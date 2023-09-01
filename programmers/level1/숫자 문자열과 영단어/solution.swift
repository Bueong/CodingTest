import Foundation

func solution(_ s:String) -> Int {
    var result = s
    let table = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0..<table.count {
        result = result.replacingOccurrences(of: table[i], with: String(i))
    }
    
    return Int(result)!
}