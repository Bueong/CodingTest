import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var result = 0
    for i in array {
        if i == n {
            result += 1
        }
    }
    
    return result
}

// 다른사람의 풀이
// func solution(_ array: [Int], _ n: Int) -> Int { array.filter { $0 == n }.count }
// 간결하고 필터를 사용해 풀었는데 효율적인 것 같음