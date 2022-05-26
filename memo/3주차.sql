프로젝트 : week1

3. 클래스 컴포넌트
 => 옛날 방식이지만 중요한 것

컴포넌트와 App을 지금까지 function으로 써왔음
function으로 만들어진 컴포넌트를 'function component'라고 함.
그런데 class 로 만들수도 있음 'class component'라고 함.
function이 있는데도 클래스로 쓴 이유는?
1. 많은 개발 문서들이 class 컴포넌트로 작성이 되어있음.
2. 리액트에서 제공하는 유용한 기능 중 하나인 'lifecycle function' 이 있는데 class component에서만 사용가능함.
3. 2019년 이후가 되어서야 function컴포넌트 에서도 lifecycle 함수가 제공됨
4. 이후에는 function 컴포넌트를 더 권장함.




code . 로 week1 프로젝트 실행함(count 예제)
이번엔 rafce가 아닌 rcc "reactClassCompo.." 를 사용하여 자동완성...


리액트 라이프사이클 나온 이유 페이스북(지금은 메타)는 항상 개발자에게 진심이라
최대한 편하게 해주고 싶어서
? 내가 컴포넌트 만들었는데 이게 render가 됐는지 모르겠다,.?
=> render 됐는지 알려주는 함수 만들어 줌
? 내가 state를 업데이트 했는데 잘 됐는지 모르겠다..?
=> state업데이트 잘 됐는지 호출하는 한수하나 만들어 줄게

리액트의 유용한 함수들


lifecycle => 인생의 주기 같은 것
리액트 앱의 라이프 사이클
Mounting(마운팅) : 컴포넌트가 시작될 때
Updating:state가 업데이트되고  UI업데이트 될 때
Unmounting : 컴포넌트가 종료될 때

constructure
- 첫번째로 실행되는 lifecycle 함수
- 무조건 호출 됨 따라서, 앱이 실행되자 마자 해줘야 하는 작업들을 이곳에 넣음
==> 보통 무엇을 하는가? 'state를 만든다.'

getDerivedStateFromProps
- 일단 pass
- 간단하게 말하면 state와 props를 동기화시켜주는 함수

render
- UI 그려주는 함수
==> 보통 무엇을 하는가? 'UI 그린다.'

componentDidMount
- UI 세팅이 완료되면
==> 보통 무엇을 하는가? 'api 콜'

componentDidUpdate
- new props : props가 업데이트되거나
- setState() : state가 업데이트되거나
- forceUpdate() : 업데이트를 강요받으면
=> render 가 발생하게 되고 'componentDidUpdate' 가 발생하게 된다.



componentDidUnmount


!!'//자바스크립트랑 HTML이랑 섞어서 작업을 해주고 싶으면 { 이 안에서 자바스크립트 }'

함수에서도 lifecycle 쓰는 법
1. useEffect 사용
    : import {useState,useEffect} from "react"; //useEffect 도 리액트 훅임.
    : 상황에 따라 다양한 역할을 하는 멀티 플레이어
    1) componentDidMount
        - useEffect 는 기본적으로 앱실행후 첫번째 렌더 후에 한번 실행이 된다.
        - 여기에선 주로 화면에 처음 보여줘야할 데이터들에 대한 api호출을 한다.
    2) componentDidUpdate
        - useEffect두번째 매개변수인 배열에 state가 들어가 있다면 
          state값이 바뀔때마다 호출되는 componentDidUpdate 의 역할을 한다.
          state가 바뀌고 렌더후 호출된다
    3) 배열 안에 여러개의 state 가 들어있다면?
        - 배열안에 여러개의 state를 구독하고 있다면 배열 안에 state중 하나라도 업데이트가 되면 
          해당 useEffect가 호출이 된다. 하지만 여러개의 state가 동시에 업데이트 되었다 해도 한번만 호출이 된다.

const [vlaue1,setValue1]=useState(0)
const [vlaue2,setValue2]=useState(0)

useEffect(()=>{
    console.log("hey")
},[value1,value2])

const updateValue =()=>{
    setValue1(1) // 1개의 state만 업데이트 됨
}
 
콘솔 결과는
  hey  
한번만 프린트 됨

const [vlaue1,setValue1]=useState(0)
const [vlaue2,setValue2]=useState(0) 
useEffect(()=>{
    console.log("hey")
 },[value1,value2]) 
const updateValue =()=>{
    setValue1(1) // 2개의 state가 동시에 업데이트 됨
    setValue2(1)
 }
 콘솔 결과는
  hey  
한번만 프린트 됨