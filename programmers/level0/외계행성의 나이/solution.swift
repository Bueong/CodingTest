import Foundation

func solution(_ age:Int) -> String {
    var result = ""
    var ageArray: [Int] = String(age).map { $0.wholeNumberValue! }
    var spaceAge: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    result += ageArray.map { spaceAge[$0] }
    return result
}