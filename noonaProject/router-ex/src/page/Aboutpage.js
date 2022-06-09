//웹사이트 정보들
import React from 'react'
import { useNavigate } from 'react-router-dom'

const Aboutpage = () => {
    //2. useNavigate 활용 화면전환
    const navigate = useNavigate();
    const goToHomepage=()=>{
        navigate("/");
    }
  return (
    <div>
      <h1>Aboutpage!</h1>
      <button onClick={goToHomepage}>Go to Hompage</button>
    </div>
  )
}

export default Aboutpage
