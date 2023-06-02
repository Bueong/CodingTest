import Foundation

func solution(_ chicken:Int) -> Int {
    var tickets = chicken
    var result = 0
    while (tickets / 10 != 0) {
        var services = tickets/10
        result += services
        tickets = tickets % 10
        
        tickets += services
    }
    return result
}