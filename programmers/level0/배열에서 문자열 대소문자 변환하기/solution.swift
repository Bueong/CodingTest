import Foundation

func solution(_ strArr:[String]) -> [String] {
    var result: [String] = []
    
    for (idx, str) in strArr.enumerated() {
        if idx % 2 == 0 { result.append(str.lowercased()) }
        else { result.append(str.uppercased()) }
    }
    
    return result
}