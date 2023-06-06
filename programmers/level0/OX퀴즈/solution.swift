import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result: [String] = []
    for i in quiz {
        let quizArr = i.components(separatedBy: " ")
        var quizAnswer = 0
        switch quizArr[1] {
        case "+":
            quizAnswer = Int(quizArr[4])!
            if Int(quizArr[0])! + Int(quizArr[2])! == quizAnswer {
                result.append("O")
            } else {
                result.append("X")
            }
        case "-":
            quizAnswer = Int(quizArr[4])!
            if Int(quizArr[0])! - Int(quizArr[2])! == quizAnswer {
                result.append("O")
            } else {
                result.append("X")
            }
        default:
            break
        }
    }
    return result
}