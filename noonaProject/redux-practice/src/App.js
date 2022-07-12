import { useState } from "react";
import { useDispatch , useSelector } from "react-redux";
import './App.css';
import Box from "./component/Box"

function App() {
 //(제거) const [count, setCount] = useState(0);
 const count = useSelector(state => state.count);
 const id = useSelector(state => state.id);
 const password = useSelector(state => state.password);
  const dispatch = useDispatch();

  const increase = () => {
    // dispatch에 Action을 던져주어야 하는데
    // 이는 객체이며 룰이 존재 함. 
    // type이라는 키가 필수로 존재, payload라는 키는 선택 존재
    // type 은 액션의 이름을 주면 됨.
    // payload 는 함수의 매개변수같은 존재
    dispatch({type:"INCREMENT", payload : {num:5}})
//(제거)   setCount(count+1);
  };

  
  const decrement = () => {
    dispatch({type:"DECREMENT"})
  };

  const login = ()=>{
    dispatch({ type: "LOGIN", payload: { id: "nona", password: "123" } })
  }

  return (
    <div>
      <h1>{id},{password}</h1>
      <h1>{count}</h1>
      <button onClick={decrement}>감소!</button>
      <button onClick={increase}>증가!</button>
      <button onClick={login}>Login</button>
      <Box/>
    </div>
  );
}

export default App;
