import UIKit

var intType = Int.self

// 引数がIntの場合は2倍し、Stringの場合は文字を2回繰り返して返すメソッド
func doubled<T>(value: T) -> T {
    if T.self == Int.self, let num = value as? Int {
        return (num * 2) as! T
    }
    if T.self == String.self, let str = value as? String {
        return "\(str)\(str)" as! T
    }
    return value
}

print(doubled(value: 2))
// -> 4
print(doubled(value: "abc"))
// -> abcabc
print(doubled(value: true))
// -> true
print(doubled(value: [1, 2, 3]))
// -> [1, 2, 3]
print(doubled(value: 3.5))
// -> 3.5
