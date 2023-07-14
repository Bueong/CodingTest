import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var termsDict: [String: Int] = [:]
    var result: [Int] = []

    func isDeprecated(today: String, startDay: String, termType: String) -> Bool {
        let todayDate = today.components(separatedBy: ".").map { Int($0)! }
        let startDate = startDay.components(separatedBy: ".").map { Int($0)! }
        var endDate = startDate
        var termDay = termsDict[termType]!
        
        while termDay != 0 {
            if termDay >= 336 {
                endDate[0] += termDay / 336
                termDay = termDay % 336
            } else if termDay >= 28 {
                endDate[1] += termDay / 28
                termDay = termDay % 28
            } else {
                endDate[2] += termDay
                termDay = 0
            }
        }
        
        if endDate[2] > 28 {
            endDate[1] += endDate[2] / 28
            endDate[2] %= 28
        }
        if endDate[1] > 12 {
            endDate[0] += endDate[1] / 12
            endDate[1] %= 12
        }
        
        if todayDate[0] < endDate[0] {
            return false
        } else if todayDate[0] == endDate[0] {
            if todayDate[1] < endDate[1] {
                return false
            } else if todayDate[1] == endDate[1] {
                if todayDate[2] <= endDate[2] {
                    return false
                }
            }
        }
        
        return true
    }
    
    for i in terms {
        let term = i.components(separatedBy: " ")
        termsDict[term[0]] = Int(term[1])! * 28 - 1
    }
    
    for (idx, privacy) in privacies.enumerated() {
        let privacyDetail = privacy.components(separatedBy: " ")
        let startDay = privacyDetail[0]
        let termType = privacyDetail[1]
        
        if isDeprecated(today: today, startDay: startDay, termType: termType) {
            result.append(idx + 1)
        }
    }
    
    return result
}