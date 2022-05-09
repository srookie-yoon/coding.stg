part 0. 자주쓰이는 자바스크립트 문법 정리

 --1) object shorthand assignment
 let name = "noona"
 let age = 17

 let person = {
     name : name,
     age : age
 }

 console.log(person)

 ==> name : name처럼  키와 벨류가 같을때 쓸 수 있음

let person = {
    name,
    age
}


--2) Destructuring
let person = {
    name :"noona",
    age : 20
}

let name = person.name
let age = person['age']

==> 줄이면?
let {name,age} = person
or let {name} = person

console.log(name,age)


배열도 가능
let array = [1,2,3,4]
let [a,b] = array // a는 1 b는 2가 됨.

rest 파라리터 문법
let [a,b,...rest] = array
console.log(rest)   //==> [3,4]    //array형태로 출력됨


--3) spread
let person = {name:"noona",age:12}
let person2 = {...person}
let person3 = person
console.log(person2) //object 새로 생성
console.log(person3) //주소값 공유 개념

console.log(person==person2) //false
console.log(person==person3) //true

let person2 = {...person,name:"jimin",pass:"Y"}
// 복사 후 수정 및 추가도 가능

let a = [1,2]
let b = [...a, 3]
console.log(b)  // [1,2,3]

let c = [...a,...b]
console.log(c) // [1,2,1,2,3]

--4) 삼항연산자
let person={name:"noona",age:17}

if(person){
    console.log(person.name)
}else{
    console.log("there is no person")
}

==>
console.log( person? person.name:"there is no person")


part 1. 리액트 기초
리액트 사용이유?
  - 기존 불편한 점 해소
    1) document.getElementById('')
    2) 자바스크립트와 HTML 파일이 따로 논다.-> 관리가 힘들다.
    3) 새 페이지 들어갈때마다 새로고침이 된다.

  - 리액트 장점
    JSX를 사용하여 관련있는 HTML과 JS를 합쳐준다.
    새로고침 없음
    코드의 재활용 => 컴포넌트를 하나 만들고 이 컴포넌트를 계속 재활용 하는 구조

1) 리액트 설치
  1-1) MileStone 1: Nodejs 설치하기
       설치주소 : https://nodejs.org/en/
       recommanded for most users 설치하기.

  1-2) node js 정상 실행 확인 *node.js란? 자바스크립트를 브라우저 밖에서도 동작할 수 있게하는 런타임 환경
       CMD 실행
           "node -v"  명령어를 통해 (버전확인)
            nodejs가 설치가 잘 됬는지 확인해보자.
  * npm이란? :  Node Package Manager의 약자이다. 
                NodeJS로 개발된 모듈들을 설치하고 관리해주는 패키지 매니져이다. 
                우리가 HTML CSS 수업에서 부트스트랩이 필요하면 가져다 썼던 것 처럼 
                nodeJS로 만들어진 유용한 모듈들을 가져다 쓰고 관리할 수 있다.

  2) MileStone 2: 프로젝트 시작하기
     프로젝트를 설치하고싶은 경로로 먼저 이동하기.
        cd desktop 
        cd noonaProject
        (프로젝트 폴더가 없다면 만들어주기.) 
         cd desktop 
         mkdir noonaProject 
         cd noonaProject
     리액트를 시작하는데 필요한 패키지 싹다 설치
        npx create-react-app [프로젝트명] 을 통해 설치.
     Happy hacking 메세지가 나오면 설치 완료!
     code .으로 프로젝트 열기.


  3) MileStone 3: SPA란?
        Single Page Application의 준말 즉 페이지가 하나라는 뜻이다.  
        하나의 페이지 안에서 자바스크립트가 필요한 페이지나 정보만 동적으로 그려준다. 
        즉, 새 페이지로 넘어갈때마다 서버에서 HTML CSS JS 소스를 가져올 필요가 없어 새로고침이 필요없다. 
        따라서 사용자에게 물흐르듯 끊김없는 웹앱 경험을 선사해줄 수 있다.
        단점은 처음에 필요한 리소스를 다 가져와야 해서 초기 구동 속도가 느리다.
        "리액트는 이런 SPA의 형식이다."
        
  4) index.html 
        => public 폴더에 index.html 하나만 존재하는 것을 볼 수 있따.
        div id는 root로 하나만 존재
     index.js
        => HTML과 JS를 연결해주는 연결고리 브릿지
            document.getElementById('root')
            딱 한번 쓰임.
        ==> 선택한 html 태그에 react 를 그려줌
        ==>                       
                const root = ReactDOM.createRoot(document.getElementById('root'));
                root.render(
                <React.StrictMode>
                    <App />
                </React.StrictMode>
                );
            강의에서는 :
                ReactDom.render(
                    <React.StrictMode>
                        <App />
                    </React.StrictMode>,
                    document.getEelementById('root')
                );

    5) 리액트 실행하기
        터미널 실행하기
            VSCode에서 Terminal > New Terminal
        리액트 실행하기
            npm start
            (실행 위치는 npx create-react-app [프로젝트명] 실행할때 프로젝트명 폴더 까지 들어가기)

    초기실행화면은 App.js 에 있는 것이 보여지게 된다.
    프로젝트 설치 후 App.js 와 App.css는 포장지일 뿐이니 내용은 지워줘도 된다
    (import 부분 특정 제외하고..)



    "
        리액트에는 class가 아닌 className을 쓴다.
        리액트에는 onclick 가 아닌 onClick을 쓴다.
        string 타입 빼고는 (string은 여전히 '' 사용)
        나머지는 {} 를 쓴다.
    "


    6) 정리
        1] 리턴 값에 html 값을 넣으면 된다.
            function App() {
                return (
                    <div className="">
                    Box1
                    <p>리사</p>

                    </div>
                );
            }
        2] 리턴 값에 태그는 큰 하나의 태그로 반환해야한다.
        3] component폴더 생성 Box.js파일 추가
            파일 생성 한 후 rafce 를 기입하면 자동완성 가능
            vscode 확장프로그램 설치 :  ES7 React/Redux/GraphQL/React-Native snippet
            - 설치를 하신 후에 "rafce"라고 쓰시면 미리보기식으로 자동완성되는 양식을 보실수가 있습니다.
            - 엔터를 치시면 다음과 같이 자동으로 완성시켜서 빠르게 사용하실수 있습니다.
            - 이외에 rfc , rafc , rfce 등등이 있으니 함수형 컴포넌트를 사용하실때는 rafce를 사용하시는 것을 추천드립니다!
        4] box.js 에  export default Box //추출 완성이되면
            import Box from "./component/Box"
            -> 를 이용해 import 후
            <Box/>
            -> 컴포넌트를 사용한다.
                (내가 원하는 태그들을 모아다가 하나의 태그로 쓸 수 있다.)

    7) props : 함수의 매개변수와 같은 존재
        컴포넌트 사용시 : 
        <Box name="리사"/>
        <Box name="제니"/>
        <Box name="지수"/>
        함수형 컨포넌트 정의시 : 
        const Box = (props) => {
        console.log("props: ",props)
            return (
                <div className="box">
                    Box1
                    <p>{props.name}</p>
                </div>
            )
        }
        =>props 라는 오브젝트안에 기입한 값들이 들어가게되고,
            동적데이터 출력을 위해 {}로 묶어주어 나타낸다.

    8) 컴포넌트
        컴포넌트 만들기
            컴포넌트 만드는 단축어 : rafce  입력 후 enter
            단축키가 안나올 경우 설치해야하는 extention 명 : ES7+ React/Redux/React-Native snippets
        * 컴포넌트 만들시 주의사항:
            컴포넌트 이름은 반드시 "대문자"로 시작해야한다.
                - 리액트가 컴포넌트와 일반 HTML태그(<div>,<p>등..)을 구별하는 방법은 태그가 대문자로 시작하는지 여부이다.
                  따라서, 소문자로 시작을 하면 일반 HTML태그로 분류해버리기 때문에 에러를 이르킨다. 
                  '반드시 첫 글자는 대문자로 하자!'
        어떤걸 컴포넌트로 만들어야 할까?
            1. 반복이 되는 부분.
                - 리스트의 아이템이라던가 반복이되는 UI요소는 컴포넌트로 만드는게 좋다.
            2. 기능별로
                - 기능별로 나누어야 개발할때나 테스트, 유지보수할때 훨씬 더 용이하다.
            3. 하나에 한 기능만
                - 나중에 재활용 될 경우를 대비해 한 컴포넌트에 한 기능만 들어있는것이 좋다.
            * 컴포넌트를 이렇게 나누어라 저렇게 나누어라 사실 절대적 기준은 없다. 
              시스템에 따라, 회사따라 그 규칙은 바뀌지만 그래도 우리는 배우는 입장에서 
              컴포넌트를 이러한 기준으로 나누는 것을 추천한다.



    9) 왜 state는 const로 선언을 할까?
        - 자바스크립트를 공부해본 사람이라면 const로 선언을 하게되면 변수의 값을 바꿀 수 없다는 사실을 알것이다.
        - 근데 state의 값은 계속 바뀌는데 왜 let이 아닌 const로 선언을 하는가??
        - useState를 구현해보면 대충 이렇게 생겼다
                function MyReact{
                    function (){
                        let val
                        useState(inivialValue){
                        val = val | inivialValue
                        function setState(newValue){
                            val = newValue
                        }
                        return [val,setState]
                        }
                    }
                }

                const [counter,setCounter]=MyReact.useState(0)
        - state는 일반 변수와 달리 setState 함수를 이용하여 값을 변경한다. 
          (이렇게 함수 내부의 변수가 함수 수명이 끝나더라도, 변수의 참조가 계속 된다면 그 변수의 수명은 계속 된다.
           - 이걸 클로저라고함 이렇게 우린 컴포넌트가 render 가 되더라도 state를 기억할 수 있다.)

        - 허나 let을 사용하게되면
        - counter2=100 과같은 변수형식의 할당이 가능해진다.
        - 따라서 이를 방지하고 setState를 사용한 변수 변경만 허락하기위해 const로 선언한다. 
          (const로 선언하면 변수형태의 재 할당을 막을 수 있다.)
        - 클로저 참조문서: https://poiemaweb.com/js-closure#:~:text=클로저에 의해 참조되는, 있는 함수라는 뜻이다.

