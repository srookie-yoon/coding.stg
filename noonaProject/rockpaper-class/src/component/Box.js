import React from 'react'

const Box = (props) => {
    console.log("props",props);
    let realResult = props.result;
    // 컴퓨터일때 반대로.. 단! 처음이거나("") 비겼을 땐 제외.
    if(props.title === "Computer" && props.result !== "" && props.result !== "tie"){
      realResult = props.result === "win"? "lose": "win";
    }
  return (
    <div className={`box ${realResult}`}> 
      <h1>{props.title}</h1>
      <h2 data-testid="item-name">{props.item && props.item.name}</h2>
      <img className ="item-img" src={props.item && props.item.img}/>
      <h2>{realResult}</h2>
    </div>
  )
}

export default Box

//const 로 정의된 함수 이름과 export하는(수출하는)이름이랑 같아야 한다.
//컴포넌트는 항상 대문자로 시작해 함. 그래야 컴포넌트로 인식됨

