import Foundation

func solution(_ food:[Int]) -> String {
    var result: [String] = ["0"]
    var foodStack: [Int] = []
    
    for i in 0..<food.count {
        var appendCount = Int(food[i] / 2)
        foodStack.append(appendCount)
    }
    
    for i in 1..<food.count {
        var appendCount = foodStack.popLast()!
        
        for j in 0..<appendCount {
            result.insert(String(foodStack.count), at: 0)
            result.append(String(foodStack.count))
        }
    }
    
    return result.joined()
}