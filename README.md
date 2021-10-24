# member-mini-project

## 요구사항

1. 회원정보검색(id) -> feat/find-member-by-id
test-findbyid.jsp
비로그인 상태에서 회원 아이디로 회원정보를 검색할 수 있다(이름, 주소)

2. 회원정보검색(address) -> feat/find-member-by-address
test-findbyaddress.jsp
회원은 주소로 회원 정보를 검색할 수 있다

3. 회원가입 -> feat/register-member
register-form.jsp
비로그인 상태에서 회원가입이 가능하다

4. 회원가입시 아이디 중복체크 -> feat/duplicate-check-id
register-form.jsp
회원가입시에는 반드시 아이디 중복확인 과정을 거쳐서 중복된 아이디가 아닐 때 회원가입이 되도록 한다

5. 로그인, 로그아웃 -> feat/log-in, feat/log-out
test-login.jsp
회원일 경우에는 로그인, 로그아웃, 기능을 사용할 수 있다

6. 회원정보수정(비밀번호, 이름, 주소) -> feat/update-member
update-member.jsp
회원은 자신의 회원정보를 아이디를 제외한 비밀번호, 이름, 주소를 수정할 수 있다

## 폴더구조
1. controller
-> src/main/java/org/kosta/memberproject/controller

2. model
-> src/main/java/org/kosta/memberproject/model

3. webapp(웹 콘텐츠(jsp, css, javascript ..)
-> src/main/webapp

4. test SQL
-> src/main/java/member.sql

## 데이터베이스
1. table
-> member(id(PK), password, name, address)

## 역할분담
cheoljin408: 1, 2
<br>
Liiims: 3, 4
<br>
KimJoongHyeok: 5, 6

**********************************************************
구현 완료 후
새로 배운거 적용해서 리팩토링 예정
<br>
2021. 10. 24
**********************************************************
## 리팩토링
1. Front Controller Design Pattern 적용
2. Singlton(Handler Mapping, Data Source Manager) 적용
3. DBCP 적용
4. EL, JSTL 적용
5. DataBase Table 변경
	member(id, password, name, address)
	-> mvc_member(id, password, name, address, birthday, regdate)
6. VO, DAO 업데이트
7. CSS(bootstrap)
