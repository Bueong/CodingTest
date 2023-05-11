import Foundation

func solution(_ number:String) -> Int {
    return (number.reduce(0) { $0 + $1.wholeNumberValue! }) % 9
}