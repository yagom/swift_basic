# 프로토콜

_프로토콜(Protocol)_ 은 특정 역할을 수행하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의합니다. 구조체, 클래스, 열거형은 프로토콜을 __채택(Adopted)__ 해서 특정 기능을 수행하기 위한 프로토콜의 요구사항을 실제로 구현할 수 있습니다. 어떤 프로토콜의 요구사항을 모두 따르는 타입은 그 __프로토콜을 준수한다(Conform)__ 고 표현합니다. 타입에서 프로토콜의 요구사항을 충족시키려면 프로토콜이 제시하는 청사진의 기능을 모두 구현해야 합니다. 즉, 프로토콜은 기능을 정의하고 제시 할 뿐이지 스스로 기능을 구현하지는 않습니다.

[![클릭하여 이동](http://img.youtube.com/vi/cjCgJPo3VM4/0.jpg)](http://www.youtube.com/watch?v=cjCgJPo3VM4 "protocol")

[소스코드](protocol.swift)

## 정의 문법

`protocol` 키워드를 사용하여 정의합니다.

```swift
protocol 프로토콜 이름 {
    /* 정의부 */
}
```

## 프로토콜 구현

```swift
protocol Talkable {
    
    // 프로퍼티 요구
    // 프로퍼티 요구는 항상 var 키워드를 사용합니다
    // get은 읽기만 가능해도 상관 없다는 뜻이며
    // get과 set을 모두 명시하면 
    // 읽기 쓰기 모두 가능한 프로퍼티여야 합니다
    var topic: String { get set }
    var language: String { get }
    
    // 메서드 요구
    func talk()
    
    // 이니셜라이저 요구
    init(topic: String, language: String)
}
```

## 프로토콜 채택 및 준수

```swift

// Person 구조체는 Talkable 프로토콜을 채택했습니다
struct Person: Talkable {
    // 프로퍼티 요구 준수
    var topic: String
    let language: String
    
    // 읽기전용 프로퍼티 요구는 연산 프로퍼티로 대체가 가능합니다
//    var language: String { return "한국어" }
    
    // 물론 읽기, 쓰기 프로퍼티도 연산 프로퍼티로 대체할 수 있습니다
//    var subject: String = ""
//    var topic: String {
//        set {
//            self.subject = newValue
//        }
//        get {
//            return self.subject
//        }
//    }
    
    // 메서드 요구 준수    
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }

    // 이니셜라이저 요구 준수    
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}
```

> 프로퍼티 요구는 다양한 방법으로 해석, 구현할 수 있습니다.

```swift
struct Person: Talkable {
    var subject: String = ""

    // 프로퍼티 요구는 연산 프로퍼티로 대체가 가능합니다
    var topic: String {
        set {
            self.subject = newValue
        }
        get {
            return self.subject
        }
    }
    
    var language: String { return "한국어" }
    
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    
    init(topic: String, language: String) {
        self.topic = topic
    }
}
```


## 프로토콜 상속

프로토콜은 하나 이상의 프로토콜을 상속받아 기존 프로토콜의 요구사항보다 더 많은 요구사항을 추가할 수 있습니다. 프로토콜 상속 문법은 클래스의 상속 문법과 유사하지만, 프로토콜은 클래스와 다르게 다중상속이 가능합니다.
```swift
protocol 프로토콜 이름: 부모 프로토콜 이름 목록 {
 /* 정의부 */
 }
```

```swift
protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    
    func write() {
        print("Write")
    }
    
    func speak() {
        print("Speak")
    }
}
```

### 클래스 상속과 프로토콜

클래스에서 상속과 프로토콜 채택을 동시에 하려면 상속받으려는 클래스를 먼저 명시하고 그 뒤에 채택할 프로토콜 목록을 작성합니다.

```swift
class SuperClass: Readable {
    func read() { }
}

class SubClass: SuperClass, Writeable, ReadSpeakable {
    func write() { }
    func speak() { }
}
```

## 프로토콜 준수 확인

is, as 연산자를 사용해서 인스턴스가 특정 프로토콜을 준수하는지 확인할 수 있습니다.

```swift
let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAny: Any = sup
someAny is Readable // true
someAny is ReadSpeakable // false

someAny = sub
someAny is Readable // true
someAny is ReadSpeakable // true

someAny = sup

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read

if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
    someReadSpeakable.speak()
} // 동작하지 않음

someAny = sub

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read
```


## 관련문서

* [The Swift Programming Language - Protocols](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html)
