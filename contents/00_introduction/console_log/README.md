# Swift 기초

작성자 : [yagom](http://blog.yagom.net)


[![Swift - 이름짓기, 콘솔로그, 문자열 보간법](https://i.ytimg.com/vi/8Xe_fr_WRgc/hqdefault.jpg)](https://www.youtube.com/embed/8Xe_fr_WRgc?autoplay=1 "Swift - 이름짓기, 콘솔로그, 문자열 보간법")

[소스코드](console_log.swift)


## 이름짓기 규칙

### Lower Camel Case

> fuction, method, variable, constant  
> > someVariableName

### Upper Camel Case
> type(class, struct, enum, extension…)
> > Person, Point, Week

```Swift는 모든 대소문자를 구분합니다.```


## 콘솔로그 남기기
> print 함수
> > 단순 문자열 출력

> dump 함수
> > 인스턴스의 자세한 설명(description 프로퍼티)까지 출력 

## 문자열 보간법
`String Interpolation`  

프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적인 값을 표현하기 위해 사용합니다.

`\()`


## 관련 문서
* [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)
* [The Swift Programming Language - Strings and Characters](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID292)