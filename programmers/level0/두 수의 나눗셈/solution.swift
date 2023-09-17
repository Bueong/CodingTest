import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    let result: Int = Int(Double(num1) / Double(num2) * 1000)
    
    return result
}