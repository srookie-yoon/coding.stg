import {useState,useEffect} from "react"; //useEffect 도 리액트 훅임.
import './App.css';
import Box from "./component/Box"

function App() {
  let counter = 0;
  const [counter2,setCounter2] = useState(0);
  // useState라는 함수를 통해 state를 만듬
  // useState는 리액트 제공 함수 쓰려면 import 해야 함. import {useState} from "react";
  //0은 매개변수의 초기값
  //리액트에서 제공해주는 유용한 함수들을 "react hook"이라고 부름

//매개변수를 2개 받음 (함수, 배열)
  //useEffect(()=>{},[])
  useEffect(()=>{
    console.log("useEffect1 Fire")
    //render 후에 실행됨 두번째 매개변수가 없으면 : componentDidMount()와 같은 것임

  },[])

  useEffect(()=>{
    console.log("useEffect2 Fire",counter2)
    //매개변수 두번째 값인 배열에 state를 넣으니 : componentDidUpdate()와 같은 것임
    //배열에 넣은 값중에 하나라도 state값이 변하면 useEffect 가 호출된다.
    //동시에 바뀌면? 여러번 되낭? 답: 아니요
    //
  },[counter2,value]);

  const increase = () =>{
      counter = counter + 1;
      setCounter2(counter2+1);
      console.log("counter는" ,counter,"counter 2 state는",counter2);
  }
  return (
    <div>
      {console.log("render")}
      <Box name="리사" num={1}/>
      <Box name="제니" num={2}/>
      <Box name="지수" num={3}/>
      <div>{counter}</div>
      <div>stat : {counter2}</div>
      <button onClick={increase}>클릭!</button>
    </div>
    
  );
}

export default App;
