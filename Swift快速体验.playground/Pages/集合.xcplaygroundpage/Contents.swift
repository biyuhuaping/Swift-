//: [Previous](@previous)

import Foundation
import UIKit

/*:
数组使用 `[]` 定义，这一点与 OC 相同
*/
//: [Int]
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//: 遍历数组
for num in numbers {
    print(num)
}

//: 通过下标获取指定项内容
let num1 = numbers[0]
let num2 = numbers[1]

/*:
可变&不可变

* `let` 定义不可变数组
* `var` 定义可变数组
*/
let array = ["zhangsan", "lisi"]
//: 不能向不可变数组中追加内容
//array.append("wangwu")
var array1 = ["zhangsan", "lisi"]

//: 向可变数组中追加内容
array1.append("wangwu")
/*:
数组的类型

* 如果初始化时，所有内容类型一致，择数组中保存的是该类型的内容，后续只允许添加该类型的值
* 如果初始化时，所有内容类型不一致，择数组中保存的是 `NSObject`，后续可以添加任何类型的值
*/
//: array1 仅允许追加 String 类型的值
//array1.append(18)
var array2 = ["zhangsan", 18] as [Any]
//: 在 Swift 中，数字可以直接添加到集合，不需要再转换成 `NSNumber`
array2.append(100)
//: 在 Swift 中，如果将结构体对象添加到集合，仍然需要转换成 `NSValue`
array2.append(NSValue(cgPoint: CGPoint(x: 10, y: 10)))

/*:
数组的定义和实例化

* 使用 `:` 可以只定义数组的类型
* 实例化之前不允许添加值
* 使用 `[类型]()` 可以实例化一个空的数组
*/
var array3: [String]
//: 实例化之前不允许添加值
//array3.append("laowang")
//: 实例化一个空的数组
array3 = [String]()
array3.append("laowang")

/*:
数组的合并
*/
array3 += array1

//: 必须是相同类型的数组才能够合并，以下两句代码都是不允许的
//array3 += array2
//array2 += array3

/*:
数组的删除
*/
//: 删除指定位置的元素
array3.remove(at: 3)
//: 清空数组
array3.removeAll()

/*:
数组的内存分配

* 如果向数组中追加元素，超过了容量，会直接在现有容量基础上 * 2
*/

var list = [Int]()

for i in 0...16 {
    list.append(i)
    print("添加 \(i) 容量 \(list.capacity)")
}

//: 直接创建容量为32的数组
print("------")
var list1 = [Int](repeating: 0, count: 32)//[Int](count: 32, repeatedValue: 0)
for i in 0...16 {
    list1[i] = 1
    print("数组容量 \(list1.capacity)")
}





//MARK:-- 字典
/*:
定义

* 同样使用 `[]` 定义字典
* `let` 不可变字典
* `var` 可变字典
*/
//: [String : NSObject] 是最常用的字典类型
var dict = ["name": "zhangsan", "age": 18] as [String : Any]

//: 赋值直接使用 `dict[key] = value` 格式
//: * 如果 key 不存在，会设置新值
dict["title"] = "boss"
//: * 如果 key 存在，会覆盖现有值
dict["name"] = "lisi"
dict


//: 遍历
for (k, v) in dict {
    print("\(k) ~~~ \(v)")
}

//: 合并字典
var dict1 = [String: Any]()
dict1["nickname"] = "大老虎"
dict1["age"] = 100

//: 如果 key 不存在，会建立新值，否则会覆盖现有值
for (k, v) in dict1 {
    dict[k] = v
}
print(dict)
//: [Next](@next)
