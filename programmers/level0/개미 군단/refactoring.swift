import Foundation

func solution(_ hp:Int) -> Int {
    let generalAnt = 5
    let sordierAnt = 3
    let ergate = 1
    let huntingArmy = [generalAnt, sordierAnt, ergate]

    var remainHp = hp
    var numberOfAnts = 0

    for i in huntingArmy {
        numberOfAnts += remainHp / i
        remainHp %= i
    }

    return numberOfAnts
}