import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    var result: [String] = []
    for i in my_string {
        if String(i) == alp {
            result.append(i.uppercased())
            continue
        }
        result.append(String(i))
    }
    return result.joined()
}