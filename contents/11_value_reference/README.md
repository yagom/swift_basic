# Class vs Struct/Enum


[![클릭하여 이동](http://img.youtube.com/vi/itMj3tVyrWo/0.jpg)](http://www.youtube.com/watch?v=itMj3tVyrWo "value_reference")

[소스코드](value_reference.swift), [학습자료](value_reference.pdf)


열거형과 구조체는 값 타입이며, 클래스는 참조 타입이라는 것이 가장 큰 차이입니다. 또한, 클래스는 상속이 가능하지만 구조체와 열거형은 상속이 불가능합니다.

```swift
struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

// 첫 번째 구조체 인스턴스
let firstStructInstance = ValueType()
// 두 번째 구조체 인스턴스에 첫 번째 인스턴스 값 복사
var secondStructInstance = firstStructInstance
// 두 번째 구조체 인스턴스 프로퍼티 값 수정
secondStructInstance.property = 2

// 두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한 
// 별도의 인스턴스이기 때문에 
// 두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도
// 첫 번째 구조체 인스턴스의 프로퍼티 값에는 영향이 없음
print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2


// 클래스 인스턴스 생성 후 첫 번째 참조 생성
let firstClassReference = ReferenceType()
// 두 번째 참조 변수에 첫 번째 참조 할당
let secondClassReference = firstClassReference
secondClassReference.property = 2

// 두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에
// 두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면
// 첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 됨
print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2
```

## 관련문서

* [The Swift Programming Language - Enumerations](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html)
* [The Swift Programming Language - Classes and Structures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html)