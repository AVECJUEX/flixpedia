# flixpedia

### 한국의 영화,드라마,예능,웹툰들 어디에 있지???



2022-03-03

프로젝트 최초 생성 및 배포



2022-03-04

깃 연결(혁주, 용환)



2022-03-05

깃 연결(나라)



2022-03-06

깃 포크 테스트(나라)


2022-03-09 17:02

dev5에 한우 push


2022-03-09

깃 포크 테스트(한우)

깃 push(한우)



2022-03-10

[오전]

회원가입시 프로필 사진 업로드 안되는 현상 수정

드라마 댓글 등록 안되는 현상 수정

댓글 남길시 별점 입력이 안되는 현상 수정

웹툰 페이지 페이징 기능 수정

[오후]

- 개인정보 프로필 사진, 드롭다운 메뉴바추가

- 세션에 이미지 이름 저장해서 상단에 출력

- 마이페이지 이동,로그아웃

- myinfo.jsp 추가

[오후2]

- member_insert 주소값 순서 수정 

- 로그인 화면에도 헤더 추가

- ajax값 안넘어가서 그냥 잠



2022-03-11

[오전]

- ajax 값 넘어감 변수명이 잘못돼있었고 form태그에 method="post"를 해뒀어도 type:"POST" 를 넣어주지 않으면 에러가 났음
- enctype="multipart/form-data" 데이터 전송시 항상 추가하기

- 마이페이지에서 회원정보수정 기능 추가, 하지만 수정 후 새로고침을 하지 않으면 바뀐 프로필 사진이 엑박으로 나옴

- 마이페이지 이동 스크립트 함수는 css.jsp에 있음(헤더에 마이페이지 버튼이 있기때문에 모든 jsp에서 공유해야해서 css.jsp에 만들었음)




2022-03-13

- 한우 로컬 메인에 댓글 삭제 기능 추가
- 지금 프로필 사진을 추가하지  않았던  회원이 마이페이지에서 사진변경을하면 사진이 추가 되지 않음





2022-03-14

- 프로필 사진 변경 되지 않는 것 수정/ 프로필 사진 등록하지 않을지 basic.jpg로 등록되도록 설정
- 회원정보 수정 할 떄 프로필을 변경하지 않을때 값이 넘어가지 않던 현상 수정



2022-03-05

CSS 추가 밑 관리자 페이지 연결/ login, logout, findid, findpw, 회원가입 기능,  관리자 홈 페이지 구현 

2022-03-07

깃허브에서 수정테스트2

2022-03-07 혁주
드라마, 예능 게시판 구현 / 회원 정보 관리 (조회, 삭제, 수정) 기능 구현 / admin 관리자 정보 확인 및 수정 기능 구현

2022-03-08
리뷰 디비 및 쿼리문 작성 /리뷰테이블 list 기능 구현 / 게시판 중 리뷰 조회 기능 구현 / admin 관리자 내정보 관리 및 수정 css 및 기능 구현 완료

2022-03-11
메일 메일 조회 및 발송 기능 추가 / 리뷰테이블 완료

2022-03-15
adminpage 전체 기능 구현 완료
엔터키 이벤트 구현, 방문자수 카운터 구현, 미디어 게시판 전체 완료, 리뷰테이블 조회/삭제 기능 완료, Q&A게시판 질문 조회, 답글, 삭제 기능 완료