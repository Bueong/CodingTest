import Foundation

func solution(_ n:Int) -> Int {
    return lcm(6, n) / 6
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var (a, b) = (a, b)
    while (b != 0) {
        let tmp = a % b
        a = b
        b = tmp
    }
    return a
}

func lcm(_ a: Int, _ b: Int) -> Int {
    var (a, b) = (a, b)
    return a * b / gcd(a, b)
}