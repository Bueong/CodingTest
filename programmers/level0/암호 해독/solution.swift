import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var result: String = ""
    
    for (idx, char) in cipher.enumerated() {
        if (idx+1) % code == 0 {
            result += String(char)
        }
    }
    
    return result
}