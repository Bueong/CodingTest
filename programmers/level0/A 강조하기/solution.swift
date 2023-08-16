import Foundation

func solution(_ myString:String) -> String {
    return myString.lowercased().map { String($0) == "a" ? "A" : String($0) }.joined()
}