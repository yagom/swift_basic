/* 컬렉션 타입 */
/* Array, Dictionary, Set */

import Swift

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */


//MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1)

print(integers) // [1, 100]

print(integers.contains(100)) // true
print(integers.contains(99)) // false

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

print(integers.count)   // 0

//integers[0] // 범위 초과 - 런타임 오류 발생

// Array<Double>와 [Double]는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

// 불면 Array의 요소는 추가/삭제 불가 - 컴파일 오류 발생
//immutableArray.append(4)
//immutableArray.removeAll()




//MARK: - Dictionary

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
print(anyDictionary) // ["someKey": "value", "anotherKey": 100]

// Key에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary) // ["someKey": "dictionary", "anotherKey": 100]

// Key에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary) // [:]

// 빈 Dictionary 생성
let emptyDictionary: [String: String] = [:]

// 초기 값을 가지는 Dictionary 생성
let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

// let으로 선언한 불변 Dictionary는 수정 불가 - 컴파일 오류 발생
//emptyDictionary["key"] = "value"

// name 키에 해당하는 값이 Dictionary에 존재하지 않을 수 있으므로 
// 컴파일 오류 발생 - 옵셔널 파트에서 상세히 다룹니다
//let someValue: String = initalizedDictionary["name"]




//MARK: - Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet) // [100, 99, 1]
print(integerSet.contains(1)) // true
print(integerSet.contains(2)) // false

integerSet.remove(100)
integerSet.removeFirst()

print(integerSet.count) // 1

// Set는 집합 연산에 꽤 유용합니다
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 4, 5, 6, 7, 3, 1]

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 3, 4]

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [2, 1]

























