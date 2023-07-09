import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var mutableCards1 = cards1
    var mutableCards2 = cards2
    
    for i in goal {
        if mutableCards1.contains(i) {
            if mutableCards1.firstIndex(of: i) != 0 {
                return "No"
            }
            mutableCards1.remove(at: 0)
        } else if mutableCards2.contains(i) {
            if mutableCards2.firstIndex(of: i) != 0 {
                return "No"
            }
            mutableCards2.remove(at: 0)
        } else {
            return "No"
        }
    }
    return "Yes"
}