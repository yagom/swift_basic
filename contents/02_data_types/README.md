# Swift의 기본 데이터 타입

* Bool
* Int, UInt
* Float, Double
* Character, String

## Bool
`true`와 `false`만을 값으로 가지는 타입

```
var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생
// someBool = 1 // 컴파일 오류발생
```

## Int, UInt

### Int
정수 타입. 현재는 기본적으로 64비트 정수형.

```
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생
```

### UInt
양의 정수 타입. 현재는 기본적으로 64비트 양의 정수형.

```
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생
```

## Float, Double

### Float
실수 타입. 32비트 부동소수형.

```
var someFloat: Float = 3.14
someFloat = 3
```

### Double
실수타입. 64비트 부동소수형.

```
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생
```

## Character, String

### Character
문자 타입. 유니코드 사용. 큰따옴표("") 사용.

```
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)
```

### String
문자열 타입. 유니코드 사용. 큰따옴표("") 사용.

```
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter // 컴파일 오류발생
```


## 생각해보기

다음 코드에서 integer, floatingPoint, apple 상수는 각각 어떤 타입이 될까요? 상상해보고 확인해보세요~! 

```
let integer = 100
let floatingPoint = 12.34
let apple = "A"
```
`힌트 : type(of: ) `

