func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n ,m)]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    if a < b {
        (a, b) = (b, a)
    }
    
    while b != 0 {
        var temp = a % b
        a = b
        b = temp
    }
    
    return a
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}