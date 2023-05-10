import Foundation

let s1 = readLine()!
let s2 = s1.uppercased()

let result = s1.map { s2.contains($0) ? $0.lowercased() : $0.uppercased() }.joined()

print(result)