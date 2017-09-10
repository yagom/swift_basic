# Swift의 기본 데이터 타입

* Bool
* Int, UInt
* Float, Double
* Character, String

[![클릭하여 이동](http://img.youtube.com/vi/3qu7gpzE9IE/0.jpg)](http://www.youtube.com/watch?v=3qu7gpzE9IE "data_types")

[소스코드](data_types.swift)

## Bool
`true`와 `false`만을 값으로 가지는 타입

```swift
var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생
// someBool = 1 // 컴파일 오류발생
```

## Int, UInt

### Int
정수 타입. 현재는 기본적으로 64비트 정수형.

```swift
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생
```

### UInt
양의 정수 타입. 현재는 기본적으로 64비트 양의 정수형.

```swift
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생
```

## Float, Double

### Float
실수 타입. 32비트 부동소수형.

```swift
var someFloat: Float = 3.14
someFloat = 3
```

### Double
실수타입. 64비트 부동소수형.

```swift
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생
```

## Character, String

### Character
문자 타입. 유니코드 사용. 큰따옴표("") 사용.

```swift
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)
```

### String
문자열 타입. 유니코드 사용. 큰따옴표("") 사용.

```swift
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter // 컴파일 오류발생
```

여러줄 문자열은 큰따옴표 세 개 사용.

```swift
someString = """
여러줄 문자열을
사용할 수 있습니다.
첫 줄에 겹따옴표 세 개,
마지막 줄에 겹따옴표 세 개를
사용하면 됩니다.
"""

someString = """
겹따옴표 세 개인 줄(첫줄, 끝줄)에서
줄 바꿈을 하지 않으면 오류가 발생합니다.
"""

/*
someString = """오류발생
오류발생"""
*/
```


## 생각해보기

다음 코드에서 integer, floatingPoint, apple 상수는 각각 어떤 타입이 될까요? 상상해보고 확인해보세요~! 

```swift
let integer = 100
let floatingPoint = 12.34
let apple = "A"
```
`힌트 : type(of: ) `


# Any, AnyObject, nil

* Any
* AnyObject
* nil

[![클릭하여 이동](http://img.youtube.com/vi/1QV4-B5ibd4/0.jpg)](http://www.youtube.com/watch?v=1QV4-B5ibd4 "any_anyobject_nil")

[소스코드](any_anyobject_nil.swift)

## Any

Swift의 모든 타입을 지칭하는 키워드

```swift
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12
```

> Any 타입에 Double 자료를 넣어두었더라도 Any는 Double 타입이 아니기 때문에 할당할 수 없습니다. 명시적으로 타입을 변환해 주어야 합니다. 타입 변환은 차후에 다룹니다

```swift
let someDouble: Double = someAny  // 컴파일 오류발생
```

## AnyObject
모든 클래스 타입을 지칭하는 프로토콜

> 클래스와 프로토콜에 대한 설명은 차후에 합니다

```swift
class SomeClass {}

var someAnyObject: AnyObject = SomeClass()
```

AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없습니다.

```swift
someAnyObject = 123.12    // 컴파일 오류발생
```

## nil

없음을 의미하는 키워드  

> 다른 언어의 `NULL`, `Null`, `null` 등과 유사한 표현입니다.

아래 코드에서 `someAny`는 `Any` 타입이고, `someAnyObject`는 `AnyObject` 타입이기 때문에 `nil`을 할당할 수 없습니다.  
`nil`을 다루는 방법은 __옵셔널__ 파트에서 다룹니다.

```swift
someAny = nil         // 컴파일 오류발생
someAnyObject = nil   // 컴파일 오류발생
```


## 관련문서

* [The Swift Programming Language - The Basics](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html)

