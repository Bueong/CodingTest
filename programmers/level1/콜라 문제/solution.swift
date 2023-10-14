import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var remainCoke = n
    var result = 0
    
    while(remainCoke >= a) {
        var returnCoke = remainCoke / a * b
        result += returnCoke
        remainCoke = remainCoke % a + returnCoke
    }
    
    return result
}