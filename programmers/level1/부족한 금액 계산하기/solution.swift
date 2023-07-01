import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result = money - (1...count).map { $0 * price }.reduce(0, +)
    if result >= 0 { return 0 }
    return Int64(-result)
}