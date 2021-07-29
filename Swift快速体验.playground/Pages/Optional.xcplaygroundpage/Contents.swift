 //: [Previous](@previous)

import Foundation

//: num 可以是一个整数，也可以是 nil，注意如果为 nil，不能参与计算
let num: Int? = 10

//: 如果 num 为 nil，使用 `!` 强行解包会报错
//: * unexpectedly found nil while unwrapping an Optional value
let r1 = num! + 100

//: 使用以下判断，当 num 为 nil 时，if 分支中的代码不会执行
if let n = num {
    let r = n + 10
    print(r)
}

let name: String? = "张三"
let no: Int? = 100

//: Swift 1.2 时，由于函数中经常需要判断变量是否为 nil，会让分支的层次很深，影响代码的可读性
func demoLet(name: String?, no: Int?) -> String {
    if let sName = name {
        if let sNo = no {
            return "姓名:" + sName + " 学号:" + String(sNo)
        }
    }
    
    return "姓名或学号为空"
}

demoLet(name: name, no: no)

//: Swift 2.0 推出了 guard 语法，让函数更加简洁
func demoGuard(name: String?, no: Int?) -> String {
    // 如果 name 或者 no 为 nil，直接返回，不再继续后面的代码
    guard let nName = name, let nNo = no else {
        return "姓名或学号为空"
    }
    return "姓名:" + nName + " 学号:" + String(nNo)
}

print(demoGuard(name: name, no: no))

//: [Next](@next)
