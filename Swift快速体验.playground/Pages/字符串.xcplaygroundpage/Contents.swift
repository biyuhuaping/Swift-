//: [Previous](@previous)

import Foundation

var str = "世界你好😃"

//: 遍历字符串中的字符
for s in str.characters {
    print(s)
}

//: 字符串长度
// 返回以字节为单位的字符串长度，一个中文占 3 个字节
let len1 = str.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
// 返回实际字符的个数
let len2 = str.characters.count
// 返回 utf8 编码长度
let len3 = str.utf8.count

//: 字符串拼接
let str1 = "Hello"
let str2 = "World"
let i: Int? = 32
str = "\(i ?? 0) 个 " + str1 + " " + str2

//: 格式化字符串
let h = 8
let m = 23
let s = 9
let timeString = String(format: "%02d:%02d:%02d", arguments: [h, m, s])


//: Range
/*:
* 在 Swift 中，`String` 和 `Range`连用时，语法结构比较复杂
* 如果不习惯 Swift 的语法，可以将字符串转换成 `NSString` 再处理
*/
let helloString = "我们一起飞"
(helloString as NSString).substringWithRange(NSMakeRange(2, 3))

helloString.substringFromIndex("我们".endIndex)
helloString.substringToIndex("我们".endIndex)
//: [Next](@next)
