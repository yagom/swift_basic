# 옵셔널 체이닝

옵셔널 체이닝은 옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용하게 활용할 수 있습니다. 매 번 nil 확인을 하지 않고 최종적으로 원하는 값이 있는지 없는지 확인할 수 있습니다. 

[![클릭하여 이동](http://img.youtube.com/vi/UANvklNnDeg/0.jpg)](http://www.youtube.com/watch?v=UANvklNnDeg "optional_chaining_nil")

[소스코드](optional_chaining.swift)


## 예제 클래스

```swift
class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}
```

## 옵셔널 체이닝 사용

```swift
let yagom: Person? = Person(name: "yagom")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")


// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
// 결과 타입도 옵셔널입니다

// 만약 우리집의 경비원의 직업이 궁금하다면..?

// 옵셔널 체이닝을 사용하지 않는다면...
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

guardJob(owner: yagom)

// 옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: yagom)
// 우리집 경비원은 직업이 없어요



yagom?.home?.guard?.job // nil

yagom?.home = apart

yagom?.home // Optional(Apartment)
yagom?.home?.guard // nil

yagom?.home?.guard = superman

yagom?.home?.guard // Optional(Person)

yagom?.home?.guard?.name // superman
yagom?.home?.guard?.job // nil

yagom?.home?.guard?.job = "경비원"

```

---

# nil 병합 연산자
중위 연산자입니다. `??`

`Optional ?? Value`

옵셔널 값이 `nil`일 경우, 우측의 값을 반환합니다. **띄어쓰기에 주의하여야 합니다.**

```swift
var guardJob: String
    
guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 경비원

yagom?.home?.guard?.job = nil

guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨

```


## 관련문서

* [The Swift Programming Language - Optional Chaining](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html)
* [The Swift Programming Language - Basic Operators - Nil-Coalescing Operator](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html)