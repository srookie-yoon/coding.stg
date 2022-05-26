프로젝트 : rockpaper

1)  내 로컬 파일 경로 : C:\yoonj\coding.stg\noonaProject\

2) cmd실행
> cd C:\yoonj\coding.stg\noonaProject
> npx create-react-app rockpaper

*ERROR 남 Cannot read properties of null (reading 'pickAlgorithm')
해결법 : cmd에서 
        > npm cache clear --force     
        명령어실행

        > cd rockpaper
        > code .


3) 가위바위보
    > 데모 링크🎬: https://rock-paper-scissor-game-nab.netlify.app/
    > 유저 스토리
        1.유저는 박스 두개를 볼 수 있다.(타이틀, 사진, 결과).
        2.유저는 박스 하단에 가위바위보 버튼을 볼 수 있다.
        3.버튼을 클릭하면 클릭한 아이템이 유저 박스에 보인다.
        4.버튼을 클릭하면 컴퓨터 아이템은 랜덤하게 선택이 된다.
        5.3번 4번의 아이템을 가지고 누가 이겼는지 승패를 나눈다.
        6.박스 테두리가 결과에 따라 색이 변한다. 지면 빨간색, 이기면 초록색, 비기면 검정색이 보인다.

4) 아이템 선택하기 Comment
    > 이벤트 처리하기
    > 기존에 HTML에서 이벤트를 처리할때는 함수를 문자열 형태로 전달을 해주었다.
        <button onclick="activateLasers()">
            Activate Lasers
        </button>

    > 리액트에서는 문자열이 아닌 함수를 받아서 이벤트를 처리한다.
        <button onClick={activateLasers}>
            Activate Lasers
        </button>


    >>  onClick안에서 HTML에서 전달해준 것 처럼 activateLasers()
        이렇게 전달을 하면 이는 '함수를 실행하는 문장'이기 때문에 이벤트가 발생하지 않았음에도 
        불구하고 처음에 render 시 바로 호출 되버린다. 
        따라서 '함수를 콜백형태로 전달해주는 것이 중요'하다.

    >> 전달해줄 매개변수가 있는 경우
        <button onClick={()=>activateLasers('some value')}>
            Activate Lasers
        </button>
    
    참고 문헌
    - https://ko.reactjs.org/docs/handling-events.html


5) 유저가 선택한 아이템 보여주기 Comment
    > 조건부 렌더링
    >> 리액트를 하다보면 많이 부딛히는 에러중 하나는 이것일 것이다.
    >>> "Cannot read properties of null"

    >   리액트의 컴포넌트들은 기본적으로 그려주고 싶은 UI를 return을하고
        만약에 UI를 그릴 당시에 보여주고자 하는 값이 없다면 에러를 일으킨다.
        이런 문제를 해결하기 위해 우린 조건부 렌더링을 할 수 있다.
    >> ? 내가 원하는 UI를 원하는 조건일때만 보여주는 것이다.

    > 조건부 렌더링을하는 3가지 방식을 소개하겠다.
    >> if-else
        if else 로 조건을 주어 상황마다 다른 내용이 보이게 한다

            if (loading){
                return <div>로딩중...</div>
            }else{
                return <div>데이터들</div>
            }
    >> 논리 연산자 &&
        자바스크립트에서 true && expression은 항상 expression으로 평가되고 
        false && expression은 항상 false로 평가됩니다.

            return(
                <div>{data && data.title}</div>
            )
        > data에 값이 있을때 (null 이 아닐때)만 .title을 보여준다

    >> 삼항연산자
        if-else 는 언제나 삼항연산식으로 표현이 가능하다 (내가 제일 좋아하는 방식이기도 하다)
        <div>{loading?'로딩중...':'데이터들'}</div>

    참고문서 
    - https://ko.reactjs.org/docs/conditional-rendering.html


5. 컴퓨터 랜덤한 아이템 선택
    > Object.keys 참고 문서
      https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys

        랜덤한 아이템을 선택하는문제가 생각보다 어렵습니다!
        지금쯤 좌절하고 있을 분들에게 해주고싶은 말은
        우리는 항상 쉬운것 만 할 순 없습니다.
        어려워도 한번 해결해내면 다음번에 비슷한 문제가 주어졌을때 누구보다 쉽게 해결할 수 있습니다.
        따라서 배우는 과정에서 어려운걸 계속 해내는 것은 좋습니다!

6. 게임의 승자 가리기
    ⛰과제1 :   유저와 컴퓨터의 결과 반대로 보여주기.
                유저와 컴퓨터가 비겼다면 둘다 Tie (비기다) 이지만
                유저가 이겼다면 컴퓨터는 졌다라는 메세지가
                유저가 졌다면 컴퓨터는 이겼다 라는 메세지가 나와야 한다.

        로직을 스스로 만들어보고
        아래 솔루션을 확인하자!

        Box.js에  들어가는 코드

            import React from "react";

            const Box = (props) => {
            let result;
            if (
                props.title === "Computer" &&
                props.result !== "tie" &&
                props.result !== ""  ) {
            // 카드가 computer카드인가? && 결과가 비긴건 아닌가? && props.result에 값이 있는가?
                result = props.result === "win" ? "lose" : "win";
            } else {// 위의 경우가 아니라면 props&nbsp;로 전달된 결과를 그대로 쓴다.
                result = props.result;
            }
            return (
                <div className='box'>
                <h1>{props.title}</h1>
                <h2 data-testid="item-name">{props.item && props.item.name}</h2>
                <img className="item-img" src={props.item && props.item.img} />
                <h2>{result}</h2>
                </div>  );
            };

            export default Box;

    ⛰과제2 :   결과에 따라 다른 테두리색 보여주기
                글씨보다 색깔이 주는 힘이 더 클때가 있다.
                데모를 보면 알겠지만 결과에따라 테두리색이 바뀐다.
                어떻게하면 결과에 따라 다른 테두리색을 줄 수 있는지 고민하고 만들어보자.

        정답소스는 충분히 고민(최소 30분이상)한 후에 보자.

        App.css
        추가해야하는 스타일들

            .win {  border: 10px solid green;  color: green; }
            .lose {  border: 10px solid red;  color: red; }
            .tie {  border: 10px solid black;  color: black; }

        Box.js 의 return 값

            return (

                <div className={`box ${result}`}>

                <h1>{props.title}</h1>

                <h2 data-testid="item-name">{props.item && props.item.name}</h2>

                <img className="item-img" src={props.item && props.item.img} />

                <h2>{result}</h2>

                </div>  );

        * className={box ${result}}이 부분이 핵심이다.

    게임 전체 소스코드 🎮
    https://github.com/legobitna/noona-Rock-Scissors-Paper



