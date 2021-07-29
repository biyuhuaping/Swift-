//: [Previous](@previous)

import Foundation

/*:
闭包类似于 OC 中的 Block

* 预先定义好的代码
* 在需要时执行
* 可以当作参数传递
* 可以有返回值
* 包含 `self` 时需要注意循环引用
*/

//: 定义一个 sum 函数，并且指定外部参数
//: * 注意：如果不指定外部参数 `sumFunc` 后续调用时，没有智能提示
func sum(num1 x: Int, num2 y: Int) -> Int {
    return x + y
}

sum(num1: 10, num2: 3)

//: 在 Swift 中函数本身就可以当作参数被定义和传递
let mySum = sum
let result = mySum(20, 30)

//: 闭包 = { (行参) -> 返回值 in // 代码实现 }
let sumFunc = { (x: Int, y: Int) -> Int in
    return x + y
}
sumFunc(10, 20)


//: [Next](@next)
