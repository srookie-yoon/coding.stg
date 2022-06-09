22.06.10

--리액트 라우터 : 멀티 웹 페이지 만들 수 있음.
https://reactrouter.com/

> Read the Docs > Docs Navigation > Installation

npm 설치를 할 거라 npm명령어 찾아서 복붙
 > 현재 : npm install react-router-dom@6


요즘 핫한 URL 디자인 패턴 : restful Route
REST 규칙을 이용해서 만든 api 디자인 패턴 

`
URL                     HTTP Verb       Action      Description
/subjects               GET             index       Show all items
/subjects/new           GET             new         Show new from
/subjects               POST            create      Create an item
/subjects/:id           GET             show        Show item with :id
/subjects/:id/edit      GET             edit        Show edit form for item with :id
/subjects/:id           PATCH           update      Update item with :id
/subjects/:id/delete    GET             delete      Show delete form for item with :id
/subjects/:id           DELETE          destroy     Delete item with :id
`
:id 에서 :의 의미는 파라미터라는 뜻이다.

Http 명령어와 URL을 매칭시켜 url디자인을 좀더 단순하고 통일성 있게 만듬

HTTP명령어
Get : 데이터를 가져올 때 쓰임 (fetch하면 기본 명령어 속성이 Get임)
Post : 데이터를 생성할 때 쓰임.
Put : 데이터를 수정할 때 쓰임(Patch 라고도 불림)
Delete: 데이터를 삭제할때 쓰임

Restful Route의 필요성
우리가 쇼핑몰 아이템을 보여주는 페이지가 있다고 가정하자
어떤이는 '/showitem' 이라고 만들고 
어떤이는 '/getItem' 이라고 만들 수 있다.
어떤 아이템을 삭제하는 페이지의 경우에는
어떤이는 '/removeItems'
어떤이는 '/deleteItems' 라고 이름지을 수 있다. 
이런식으로 하면 이름에 통일성이 없어지고 어떤 아이템에 대해서 
모든 생성,읽기,수정,삭제 행위에 대해서 총 4개의 url이 필요하다.

/getItem /createItem /updateItem /deleteItem
이렇게 하면 url은 길고 복잡해진다. 이를 해결하기 위해 나온게 restful 디자인이다.
url에서 동사는 빼고 이를 Http 명령어로 대체한다

따라서,
/items + get 명령어     = 아이템읽어오기
/items + post 명령어    = 아이템 생성하기 
/items + put 명령어     = 아이템 수정하기 
/items + delete명령어   = 아이템 삭제하기
이런 규칙으로 바뀐다
즉 /items라는 url 하나로 4가지의 액션을 할 수 있게 되었다.

내가 하나의 아이템만 가져오고싶다면 뒤에 아이템의 id를 붙이는것도 restful route의 규칙이다
/items/:id + get 명령어 = id를 가진 아이템읽어오기 
/items/:id + put 명령어 = id를 가진 아이템 수정하기 
/items/:id + delete 명령어 = id를 가진 아이템 삭제하기

