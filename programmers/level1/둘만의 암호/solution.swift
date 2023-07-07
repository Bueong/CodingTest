import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var alpha = Array("abcdefghijklmnopqrstuvwxyz")
    var result = ""
    // skip 삭제
    for i in skip {
        alpha.remove(at: alpha.firstIndex(of: i)!)
    }
    
    for i in s {
        var alphaIdx = alpha.firstIndex(of: i)!
        result = result + String(alpha[(alphaIdx + index) % alpha.count])
    }
    
    return result
}