# 반복문

* for-in
* while
* repeat-while


[![클릭하여 이동](http://img.youtube.com/vi/9QEiAzui0-s/0.jpg)](http://www.youtube.com/watch?v=9QEiAzui0-s "loop")

[소스코드](loop.swift)


## for-in 구문

기존 언어의 for-each 구문과 유사합니다. Dictionary의 경우 이터레이션 아이템으로 튜플이 들어옵니다. 튜플에 관해서는 [Swift Language Guide의 Tuples 부분](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html)을 참고하면 되겠습니다.

### for-in 구문의 기본 형태

```swift
for item in items {
    /* 실행 구문 */
}
```

### for-in 구문의 사용
```swift
var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}
```

## while 구문

### while 구문의 기본 형태

```swift
while 조건 {
    /* 실행 구문 */
}
```

### while 구문의 사용

```swift
while integers.count > 1 {
    integers.removeLast()
}
```

## repeat-while 구문
기존 언어의 do-while 구문과 형태 및 동작이 유사합니다

### repeat-while 구문의 기본 형태

```swift
repeat {
    /* 실행 구문 */
} while 조건
```

### repeat-while 구문의 사용

```swift
repeat {
    integers.removeLast()
} while integers.count > 0
```


## 관련문서

* [The Swift Programming Language - Control Flow](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html)