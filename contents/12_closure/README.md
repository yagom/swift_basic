# 클로저

클로저는 코드의 블럭입니다. [일급시민(first-citizen)](https://ko.wikipedia.org/wiki/일급_객체)으로, 전달인자, 변수, 상수 등으로 저장, 전달이 가능합니다.  
함수는 클로저의 일종으로, `이름이 있는 클로저`라고 생각하면 됩니다.


[![클릭하여 이동](http://img.youtube.com/vi/Ix9gGuupjBU/0.jpg)](http://www.youtube.com/watch?v=Ix9gGuupjBU "closure")

[소스코드](closure.swift)


## 기본 클로저 문법

```swift
{ (매개변수 목록) -> 반환타입 in
    실행 코드
}
```
## 클로저의 사용
```swift
// sum이라는 상수에 클로저를 할당
let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

let sumResult: Int = sum(1, 2)
print(sumResult) // 3
```

## 함수의 전달인자로서의 클로저

클로저는 주로 함수의 전달인자로 많이 사용됩니다. 함수 내부에서 원하는 코드블럭을 실행할 수 있습니다.

```swift
let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)

print(calculated) // 60

calculated = calculate(a: 50, b: 10, method: substract)

print(calculated) // 40

calculated = calculate(a: 50, b: 10, method: divide)

print(calculated) // 5

//따로 클로저를 상수/변수에 넣어 전달하지 않고, 
//함수를 호출할 때 클로저를 작성하여 전달할 수도 있습니다.

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated) // 500

```


# 다양한 클로저표현
클로저는 다양한 모습으로 표현될 수 있습니다.
함수의 매개변수 마지막으로 전달되는 클로저는 `후행클로저(trailing closure)`로 함수 밖에 구현할 수 있습니다. 

컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반환 타입을 생략할 수 있습니다.

반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 `return` 키워드를 생략하더라도 반환 값으로 취급합니다.

전달인자의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름(`$0`, `$1`, `$2`...)을 사용 할 수 있습니다.


[![클릭하여 이동](http://img.youtube.com/vi/WvqYKP6VgNQ/0.jpg)](http://www.youtube.com/watch?v=WvqYKP6VgNQ "closure_advanced")

[소스코드](closure.swift)


-----

클로저 매개변수를 갖는 함수 `calculate(a:b:method:)`와 결과값을 저장할 변수 `result`를 먼저 선언해둡니다.

```swift
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int
```

## 후행 클로저
클로저가 함수의 마지막 전달인자라면 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현할 수 있습니다.

```swift
result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result) // 20
```

## 반환타입 생략
`calculate(a:b:method:)` 함수의 `method` 매개변수는 `Int` 타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에 굳이 클로저에서 반환타입을 명시해 주지 않아도 됩니다. 
대신 `in 키워드는 생략할 수 없습니다`

```swift
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})

print(result) // 20

// 후행클로저와 함께 사용할 수도 있습니다
result = calculate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

print(result) // 20
```

## 단축 인자이름
클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자이름을 활용할 수 있습니다. 단축 인자이름은 클로저의 매개변수의 순서대로 `$0`, `$1`, `$2`... 처럼 표현합니다.

```swift
result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})

print(result) // 20


// 당연히 후행 클로저와 함께 사용할 수 있습니다
result = calculate(a: 10, b: 10) {
    return $0 + $1
}

print(result) // 20
```

## 암시적 반환 표현
클로저가 반환하는 값이 있다면 클로저의 마지막 줄의 결과값은 암시적으로 반환값으로 취급합니다.

```swift
result = calculate(a: 10, b: 10) {
    $0 + $1
}

print(result) // 20

// 간결하게 한 줄로 표현해 줄 수도 있습니다
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20
```

## 축약 전과 후 비교

```swift
//축약 전
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

//축약 후
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20
```

## 관련문서

* [The Swift Programming Language - Closures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html)
* [일급시민(first-citizen)](https://ko.wikipedia.org/wiki/일급_객체)