7주차
1. 리덕스?
 - 리액트가 쓸 수 있는 라이브러리 중 하나
 - 라이브러리기 때문에 필수사항은 아니나, 없으면 매우 불편함 (LIKE 부트스트랩)
 - 요즘 회사에서는 리액트를쓰면 리덕스는 거의 필수
 - 의무는 아니지만 의무처럼 배워야 함
 - 컨셉중에 어려워함...

2. 리덕스는 왜 있을까?
 - 리액트의 어떤 불편한 문제를 해결하려 했을까?
 - 리액트는 단방향이라 지금까지 코드들을 보면 부모에 해당하는 곳에 status를 선언하고 props를 주어 관리했다.
   이렇게 props를 남발하게된다.
 - 그래서 리덕스는 store라는 저장소에 state를 저장해 두게된다.
 - stord에 요청을 하면 전달하는 방식으로 사용하게된다.
 - 따라서, 언제 어디서든 요청하여 전달 받을 수 있음.

3. ???
 - 그러나 컴포넌트가 store의 값을 바로 바꾸거나 요청하지 못한다.
 -- Component ---> Action --> Reducer --> Store
 --- 컴포넌트는 액션을 만든다 => 행동지시를 만든다[상품정보 가져오기] 
 --- 액션은 Reducer리듀서(평범한 함수)로 안에 케이스가 많음(작업 지시가 모여있음)
     행동지침에 따라서 store를 업데이트 시킴
Action : 로그인하기
Reducer : case "로그인하기" : return .... => 인지하여 작업수행
Store : 리듀서에 의해 값이 변경 됨.
        store값이 바뀌면 자동으로 component 바뀌면서 re render가 이루어짐

리액트 훅이 존재 : useDispatch ,useSelector
useDispatch : component에서 Action으로 갈때 액션을 던지는 훅이다.
useSelector : component에서 store에 있는 값을 가져다 쓸 때 사용하는 훅.

3. 설치
 - Redux 설치
 -- https://ko.redux.js.org/introduction/getting-started
 -- Redux Core 설치
 --- npm install redux
 - 하지만 이렇게만 해서는 안된다.
   리덕스는 리액트만을 위해 존재하는 것이 아니라 node.js 처럼 자바스크립트를 사용하는 곳에서 사용할 수 있음.
   그렇기 때문에 리액트에서 사용하려면 약간 더 해줘야 함 
   왜냐하면, useDispatch, useSelector 와 같이 리액트 훅 같은 경우는 다른 곳에서는 필요하지 않음
   따라서 별도로 react-redux를 설치해줘야 함.
 - React Redux 설치
 -- https://react-redux.js.org/introduction/getting-started
 -- An Existing React App​
--- npm install react-redux