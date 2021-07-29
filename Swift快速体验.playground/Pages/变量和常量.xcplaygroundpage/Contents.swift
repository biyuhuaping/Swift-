//: [Previous](@previous)

import Foundation

let x = 100
//: 常量一旦设置，不能再次修改，以下代码会报错
//x = 300

var y = 200
//: 变量设置之后，可以继续修改不会报错
y = 300

//: 定义变量时，使用 :，可以指定该变量的类型
let x1: Double = 10
let y1 = 10.0
let result = x1 + y1

/*:
Swift 对数据类型要求异常严格

* 整数的默认类型是 Int(long 64位)
* 小数的默认类型是 Double (OC 中使用比较多的是 CGFloat)
* Swift 中任何时候，都不会做`隐式转换`，如果要对不同类型的数据进行计算，必须要自己转换
*/
let x2 = 10
let y2 = 10.5

let r1 = Double(x2) + y2
let r2 = x2 + Int(y2)

//: [Next](@next)
