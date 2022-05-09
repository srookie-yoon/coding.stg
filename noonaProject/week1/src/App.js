import {useState} from "react";
import './App.css';
import Box from "./component/Box"

function App() {
  let counter = 0;
  const [counter2,setCounter2] = useState(0);
  // useState라는 함수를 통해 state를 만듬
  // useState는 리액트 제공 함수 쓰려면 import 해야 함. import {useState} from "react";
  //0은 매개변수의 초기값
  //리액트에서 제공해주는 유용한 함수들을 "react hook"이라고 부름


  const increase = () =>{
      counter = counter + 1;
      setCounter2(counter2+1);
      console.log("counter는" ,counter,"counter 2 state는",counter2);
  }
  return (
    <div>
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
