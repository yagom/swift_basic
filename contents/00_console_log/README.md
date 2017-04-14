# Swift 기초

작성자 : [yagom](http://blog.yagom.net)

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