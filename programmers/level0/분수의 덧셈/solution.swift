import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    
    return gcd(b, a % b)
}

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var result = [0, 0]
    
    if denom1 != denom2 {
        result[1] = denom1 * denom2
        result[0] = numer1 * denom2 + numer2 * denom1
    } else {
        result[1] = denom1
        result[0] = numer1 + numer2
    }
    
    let gcdNum = gcd(result[0], result[1])
    
    return result.map { $0 / gcdNum }
}

