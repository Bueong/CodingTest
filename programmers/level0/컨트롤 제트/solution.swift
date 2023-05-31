import Foundation

func solution(_ s:String) -> Int {
    var sArray = s.components(separatedBy: " ")
    var result = 0
    for (idx, item) in sArray.enumerated() {
        if item == "Z" { 
            result -= Int(sArray[idx-1])!
        }
        else { 
            result += Int(item)!
        }
    }
    return result
}