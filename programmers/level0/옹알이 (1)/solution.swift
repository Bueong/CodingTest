import Foundation

func solution(_ babbling: [String]) -> Int {
    
    var words: [String] = ["aya", "ye", "woo", "ma"]
    var result = 0
    
    for i in babbling {
        var length = i.count
        for j in words {
            if i.contains(j) {
                length -= j.count
            }
        }
        
        if length == 0 { result += 1 }
    }
    
    return result
}