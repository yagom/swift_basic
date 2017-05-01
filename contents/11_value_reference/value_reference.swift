/* 클래스, 구조체/열거형 비교 */

import Swift

//MARK:- Class vs Struct/Enum 

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2


let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2
