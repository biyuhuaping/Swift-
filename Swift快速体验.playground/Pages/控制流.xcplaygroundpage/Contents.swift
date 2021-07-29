//: [Previous](@previous)

import UIKit

/*:
Swift 中没有 C 语言中的`非零即真`概念，在逻辑判断时必须显示地指明具体的判断条件

1. 条件不需要括号 `()`
2. 但是 `{}` 不能省略
*/
let num = 200
if num < 10 {
    print("比 10 小")
} else if num > 100 {
    print("比 100 大")
} else {
    print("10 ~ 100 之间的数字")
}

/*:
三目运算

* Swift 中的 `三目` 运算保持了和 OC 一致的风格
*/
var a = 10
var b = 20
let c = a > b ? a : b
print(c)

/*:
可选项判断
*/
let url = NSURL(string: "http://www.baidu.com")

//: 方法1: 强行解包 - 缺陷，如果 url 为空，运行时会崩溃
//let request = NSURLRequest(URL: url!)

//: 方法2: 首先判断 - 代码中仍然需要使用 `!` 强行解包
if url != nil {
    let request = NSURLRequest(url: url! as URL)
    print(request)
}

//: 方法3: 使用 `if let`，这种方式，表明一旦进入 if 分支，u 就不在是可选项
if let u = url, u.host == "www.baidu.com" {
    let request = NSURLRequest(url: u as URL)
    print(request)
}

//: `if let` 扩展
//: 1> 初学 swift 一不小心就会让 if 的嵌套层次很深，让代码变得很丑陋
if let u = url {
    if u.host == "www.baidu.com" {
        let request = NSURLRequest(url: u as URL)
        print(request)
    }
}

//: 2> 使用 where 关键字
if let u = url, u.host == "www.baidu.com" {
    let request = NSURLRequest(url: u as URL)
    print(request)
}

//: 3> 可以使用 `,` 同时判断多个可选项是否为空
let oName: String? = "张三"
let oNo: Int? = 100

if let name = oName {
    if let no = oNo {
        print("姓名:" + name + " 学号: " + String(no))
    }
}

if let name = oName, let no = oNo {
    print("姓名:" + name + " 学号: " + String(no))
}

/*:
Swift 中的 `switch` 不再局限于整数

* `switch` 可以针对`任意数据类型`进行判断
* 不再需要 `break`
* 每一个 `case`后面必须有可以执行的语句
* 要保证处理所有可能的情况，不然编译器直接报错，不处理的条件可以放在 `default` 分支中
* 每一个 `case` 中定义的变量仅在当前 `case` 中有效，而 OC 中需要使用 `{}`
*/

let score = "A"
switch score {
case "A", "B", "C":
    let name = "张三"
    print(name + "及格")
case "D", "E":
    print("不及格")
default:
    print("其他")
}

//: switch 中同样能够赋值和使用 `where` 子句
let point = CGPoint(x: 10, y: 10)
switch point {
case let p where p.x == 0 && p.y == 0:
    print("中心点")
case let p where p.x == 0:
    print("Y轴")
case let p where p.y == 0:
    print("X轴")
case let p where abs(p.x) == abs(p.y):
    print("对角线")
default:
    print("其他")
}//: [Next](@next)
