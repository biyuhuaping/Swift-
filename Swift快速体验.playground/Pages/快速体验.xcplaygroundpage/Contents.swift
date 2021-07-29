//: Playground - noun: a place where people can play

import UIKit

/*:
* 创建对象
* OC 中 alloc initWithXXX 方法
* swift (XXX: )
* OC [UIColor redColor]
* swift UIColor.redColor()

* 枚举
* OC UIButtonTypeContactAdd
* swift UIButtonType.ContactAdd

* 尽量用常量
* view 创建之后，只是修改了属性，没有修改内存地址，因此可以使用 let
* swift中开发有一个建议，定义变量(常量)时，先用 `let`，等必须要修改的时候，再去改成 `var`

* 重要技巧
* 在 Swift 开发中的重要技巧：`Option + Click` 可以查看变量的类型
* 在 Swift 中的变量类型是自动推导的
*/
let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.yellow

let btn = UIButton(type: UIButton.ButtonType.contactAdd)
btn.center = view.center
view.addSubview(btn)

var x: Double = 0
for i in 0...72 {
    x = 10 * sin(.pi / 18 * Double(i))
}


