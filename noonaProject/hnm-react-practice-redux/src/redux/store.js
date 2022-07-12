// import { createStore , applyMiddleware} from 'redux';
// // composeWithDevTools 크롬 확장프로그램에서 사용함
// import { composeWithDevTools } from 'redux-devtools-extension';
// import thunk from 'redux-thunk'
// import rootReducer from './reducers'
// //index.js 는 기본파일이라 폴더명까지만 입력하면 알아서 index.js를 읽어온다.

// let store = createStore(rootReducer, composeWithDevTools(applyMiddleware(thunk)));
// //let store = createStore(rootReducer, applyMiddleware(thunk));

// export default store;




import {configureStore} from '@reduxjs/toolkit'
import authenticateReducer from "./reducers/authenticateReducer";
import producerReducer from "./reducers/productReducer";

//combinereduce         => 바로 정의해도 됨.
//thunk                 => 
//applyMiddleware       => thunk가 자동으로 셋업되어 있음
//composeWithDevTools   => devTool 이 자동으로 셋업되어있음

const store = configureStore({
    reducer:{
        auth: authenticateReducer,
        product: producerReducer,
    }
});

export default store;
