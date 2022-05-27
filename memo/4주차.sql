1. 날씨앱 소개
    데모 : https://bitna-weather.netlify.app
    1) 유저 스토리
        - 유저는 현재위치의 날씨를 볼 수 있다.(지역,온도,날씨 상태)
        - 유저는 다른 도시의 버튼들을 볼 수 있다.
        - 유저는 다른 도시 버튼을 클릭하면 해당 도시의 날씨 정보를 볼 수 있다.
        - 유저는 데이터가 로딩될 때 로딩 스피너를 볼 수 있다.


    2) API 문서
        - https://openweathermap.org/api

        가입하는 법
        1. sign in 누르고 계정만들기 클릭
        2. 계정정보 입력하고 가입하기
        3. 이메일 확인하기
        4. API 키 확인하기

    3) 현재 위치
        - https://www.w3schools.com/html/html5_geolocation.asp

다시 반복
- 컴포넌트 자동완성 'rafce'
- npm start 한 서버 끄는 법은? 
    - 터미널에서 컨트롤 + c
    4) 리액트 부트 스트랩
        - react 전용 부트 스트랩이 있음
        - 설치법 : 터미널에서 명령어
            npm install react-bootstrap bootstrap
        - 링크
        https://react-bootstrap.github.io/getting-started/introduction

8. 도시별 날씨 보여주기 Comment
stateful, stateless
컴포넌트를 나누는 또 다른 방식이다.

이미지 :https://files.cdn.thinkific.com/file_uploads/523761/images/fe8/752/1c0/1648395515155.jpg

stateful 컴포넌트 : 모든 state를 들고있는 컴포넌트
stateless 컴포넌트: state를 안들고 있고 props 와 같이 받은 데이터만 보여주는 컴포넌트
리액트는 단방향 통신이다 즉 부모에서 자식으로만 데이터를 전달 할 수 있다.
이를통해 데이터 흐름을 추적하기는 더 쉽지만, 같은 형제끼리 데이터를 주고받기는 힘들다. 그래서 데이터는 주로 부모가 들고있고 자식에게 전달해주는 형식이 된다. state를 들고있는 부모 컴포넌트는 stateful 컴포넌트, 부모가주는 데이터만 받는 컴포넌트를 stateless 컴포넌트라고 한다.
(똑똑한 컴포넌트와 멍청한 컴포넌트로 불리기도한다)
이렇게 컴포넌트를 구성하면 장점은 state가 없는 stateless컴포넌트는 재사용이 쉽고 데이터를 걱정하지 않아도 된다. (왜냐 받아서 쓰기만 하니까)
모든 중요한 데이터들은 stateful컴포넌트에 있기 때문에 유지보수가 쉽다 (stateful컴포넌트 하나만 주시하고 관리해주면 되니까)
그래서 최대한 모든 컴포넌트를 stateless로 만들고 몇개의 stateful컴포넌트에서 데이터를 관리하는 구조가 이상적이라고 리액트는 말하고 있다.

9. 자바스크립트 배열함수
    https://www.youtube.com/watch?v=kLYdgg0ljTk 
배열함수의 역할은?
9-1) 일반 for문
    for(let i = 0; i names.lengh;i++){
        console.log(names[i])
    }
9-2) forEach
    names.forEach(function (item) {console.log(item)})
    또는
    names.forEach((item)=>{console.log(item)})
9-3) map
    let data = ceoList.map((item)=>{
        return item.age
    })
    //주로 맵의 오브젝트의 특정요소만을 선택해서 배열리스트로 만들어 줄때 이용한다.
    //리턴 값 있음(배열)
9-4) filter
    let data = ceoList.filter((item)=>{
        return  item.age==23    // 리턴값이 필수이며, true false로 나와야 함. 해당항목만 리스트업 됨.
        //return item.startsWith("L")
    })
9-5) some
    let data = names.some((item)=>{
        return item.startsWith("L") //조건식에 참인게 하나라도 있으면 true
    })
9-6) every
    let data = names.every((item)=>{
        return item.startsWith("L") //조건식에 모두 만족하면 true
    })
9-7) find
    let data = names.find((item)=>{
        return item.startsWith("L") //filter 는 배열형식으로 주지만  find는 해당 값을 하나만 던저줌 
    })
9-8) findIndex
    let data = names.find((item)=>{
        return item.startsWith("L") //filter 는 배열형식으로 주지만  find는 해당 값의 인덱스를 던저줌
    })


10) 리액트 스피너
    https://www.npmjs.com/package/react-spinners
    10-1) 설치
    - npm install --save react-spinners

9. 날씨앱 MINI과제 
    여기까지 오시느라 수고하셨습니다! 
    처음배운 낯선 개념인 lifecycle를 이용해서 프로젝트 만드시기 힘드셨을 것 같은데. 
    얼른 이 개념이 익숙해 지기 위해 우리 마지막 2가지 기능은 스스로 해봅시다!

    과제 1 :유저가 current location버튼을 누르면 다시 현재 위치 날씨를 볼 수 있다.
    과제 2 :유저가 버튼을 클릭하면 클릭된 버튼이 표시가 된다.
    과제 3 : try-catch를 이용한 api호출 에러 핸들링도 해보자
    이 두가지를 스스로 먼저 충분히 고민해보시고 저의 정답코드를 보시기 바랍니다!
    https://hackmd.io/@oW_dDxdsRoSpl0M64Tfg2g/HkMdpT84c


    가위바위보 프로젝트 class 컴포넌트로 전환 정답
    https://hackmd.io/@oW_dDxdsRoSpl0M64Tfg2g/ryEiGPPz9


