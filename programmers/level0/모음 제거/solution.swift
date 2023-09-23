import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    result = my_string.components(separatedBy: ["a","e","i","o","u"]).joined()
    
    return result
}