import Foundation

func solution(_ rsp:String) -> String {
    var result: String = ""
    for i in rsp {
        let myAct = i == "2" ? "0" : i == "5" ? "2" : "5"
        result += myAct
    }
    return result
}