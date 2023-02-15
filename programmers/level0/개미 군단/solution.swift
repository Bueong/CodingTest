import Foundation

func solution(_ hp:Int) -> Int {
    let generalAnt = 5
    let sordierAnt = 3
    let ergate = 1

    var remainHp = hp
    var numberOfAnts = 0

    if (remainHp / generalAnt) > 0 {
        numberOfAnts += remainHp / generalAnt
        remainHp = remainHp % generalAnt
    }
    if (remainHp / sordierAnt) > 0 {
        numberOfAnts += remainHp / sordierAnt
        remainHp = remainHp % sordierAnt
    }
    if (remainHp / ergate) > 0 {
        numberOfAnts += remainHp / ergate
        remainHp = remainHp % ergate
    }

    return numberOfAnts
}