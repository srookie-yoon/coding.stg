

1. redux middleware
비동기작업 =  호출시기다려야하는 작업들을
리덕스로 할 수 없다.
그래서 리덕스 미들웨어를 사용한다.
미들웨어에서 기다려주고 디스패치와 리듀서에 전달이 된다.
컨셉의 이름이다.

리덕스 미들웨어 종류
1. redux-saga
2. redux-thunk

> https://github.com/reduxjs/redux-thunk
>> npm install redux-thunk


# hnm 프로젝트를 리덕스로 변경해보기
1. redux, react-redux 설치
  npm install react-redux
  npm install redux-thunk

2. index.js
provider 세팅

  <Provider store={store}>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </Provider>

3. sotre 생성
src > redux 폴더 생성
store.js 파일 생성
import { createStore } from 'redux';
let store = createStore(reducer);

4. 
redux > reducers 폴더 생성
상품을 가져오는 reducer 생성 > productReducer

//초기값
let initialState={
}
function producerReducer(state = initialState, action)
리듀서의 필수 파람 state, action

reducer 와 store 각각 export 까지 진행 후
index.js 에 import 까지 완료한다.

5. redux > actions 폴더 생성
actions > productAction.js 파일 생성
- //미들웨어 함수들을 쫙 만들 예정

...

리듀서 여러개 합치기
- combineReducer
https://lunit.gitbook.io/redux-in-korean/recipes/structuringreducers/usingcombinereducers

redux 유용한 툴
- redux devtools
크롬앱 추가

- 깃허브
https://github.com/zalmoxisus/redux-devtools-extension
npm install --save redux-devtools-extension

import { composeWithDevTools } from 'redux-devtools-extension';

*정리
리덕스는 동기적으로 state를 처리한다.
그래서 api를 호출시에 기다리는 작업을 못하기 때문에
리덕스 미들웨어를 사용함 그중에 우리가 사용한 미들웨어는 redux-thunk
미들웨어는 createStore()에서 (리듀서,미들웨어) 로 보내주면 적용된다.
그리고 리듀서에 있는 state들을 바로바로 확인하고 싶다면 redux-devtools-extension 의 composeWithDevTools를 사용한다. (미들웨어를 감싸줌)
이제 async 함수들을 미들웨어에서 다뤄준다. => action에서
리듀서를 여러개 만들 수 있으나 하나로 합친 후에 전달해주어야 함. reducers > index.js
합칠때 리듀서 정의시 지정한 object 키는 state 등을 사용할때 해당 리듀서를 언급하여 사용해야 함.


6. 리덕스 미들웨어 Mini 과제 Comment
이미지 링크
https://files.cdn.thinkific.com/file_uploads/523761/images/e99/0ca/c95/1649500827844.jpg
코드확인
https://hackmd.io/@oW_dDxdsRoSpl0M64Tfg2g/BkP5TACmc


