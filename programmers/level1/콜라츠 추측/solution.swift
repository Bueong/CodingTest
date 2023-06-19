func solution(_ num:Int) -> Int {
    guard num != 1 else { return 0 }
    var inputNum = num
    var count = 0
    while count < 500 {
        inputNum = inputNum % 2 == 0 ? inputNum / 2 : inputNum * 3 + 1
        count += 1
        if inputNum == 1 { return count }
    }
    return -1
}