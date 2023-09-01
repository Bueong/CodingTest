import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result: Int = 0
    var remainBudget = budget
    
    for i in d.sorted() {
        guard remainBudget >= i else { break }
        remainBudget -= i
        result += 1
    }
    
    return result
}