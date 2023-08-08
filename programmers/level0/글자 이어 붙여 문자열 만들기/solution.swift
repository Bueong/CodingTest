import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    return index_list.map { String(my_string[my_string.index(my_string.startIndex, offsetBy: $0)]) }.joined()
}