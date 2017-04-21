/* Any, AnyObject, nil */

import Swift

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject -  모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

// Any 타입에 Double 자료를 넣어두었더라도
// Any는 Double 타입이 아니기 때문에 할당할 수 없습니다
// 명시적으로 타입을 변환해 주어야 합니다.
// 타입 변환은 차후에 다룹니다
//let someDouble: Double = someAny  // 컴파일 오류발생

//MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

// AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에
// 클래스의 인스턴스가 아니면 할당할 수 없습니다
//someAnyObject = 123.12    // 컴파일 오류발생

// nil은 없음을 의미하는 키워드입니다
// 다른 언어의 NULL, Null, null 등과 유사한 표현입니다.
// someAny는 Any 타입이고, 
// someAnyObject는 AnyObject 타입이기 때문에
// nil을 할당할 수 없습니다
// nil을 다루는 방법은 옵셔널에서 다룹니다.

//MARK: - nil

//someAny = nil         // 컴파일 오류발생
//someAnyObject = nil   // 컴파일 오류발생

