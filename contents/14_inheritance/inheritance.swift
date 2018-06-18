/* 상속 */

// 스위프트의 상속은 클래스, 프로토콜 등에서 가능합니다
// 열거형, 구조체는 상속이 불가능합니다
// 스위프트는 다중상속을 지원하지 않습니다
// 이번 파트에서는 클래스의 상속에 대해서 알아봅니다

import Swift

//MARK: - 클래스의 상속과 재정의

//class <#이름#>: <#상속받을 클래스 이름#> {
//    /* <#구현부#> */
//}

class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    
    // final 키워드를 사용하여 재정의를 방지할 수 있습니다
    final func sayHello() {
        print("hello")
    }
    
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    // 재정의 가능한 class 메서드라도 
    // final 키워드를 사용하면 재정의 할 수 없습니다
    // 메서드 앞의 `static`과 `final class`는 똑같은 역할을 합니다
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

class Student: Person {
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    // static을 사용한 타입 메서드는 재정의 할 수 없습니다
//    override static func typeMethod() {    }
    
    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다
//    override func sayHello() {    }
//    override class func finalClassMethod() {    }

}

let yagom: Person = Person()
let hana: Student = Student()

yagom.name = "yagom"
hana.name = "hana"
hana.major = "Swift"

yagom.selfIntroduce()
// 저는 yagom입니다

hana.selfIntroduce()
// 저는 hana이고, 전공은 Swift입니다

Person.classMethod()
// type method - class

Person.typeMethod()
// type method - static

Person.finalClassMethod()
// type method - final class


Student.classMethod()
// overriden type method - class

Student.typeMethod()
// type method - static

Student.finalClassMethod()
// type method - final class
