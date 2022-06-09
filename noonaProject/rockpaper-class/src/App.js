import {useState} from 'react'
import './App.css';
import Box from "./component/Box"
/* 
  1. 박스 2개(타이틀,사진,결과)
  2. 가위 바위 보 버튼이 있다.
  3. 버튼을 클릭하면 클릭한 값이 보임
  4. 컴퓨터는 랜덤하게 아이템 선택이 된다.
  5. 3,4 의 결과를 가지고 누가 이겼는지 승패를 따진다.
  6. 승패결과에 따라 테두리 색이 바뀐다.
      (이기면 초록, 지면 빨강, 비기면 검은색) 
*/
const choice = {
  rock:{
    name:"Rock",
    img:"https://static.wikia.nocookie.net/scp-fanon/images/7/75/Scp-20202.jpg"
  },
  scissors:{
    name:"Scissors",
    img:"https://i.pinimg.com/474x/7d/86/41/7d86419df7f097e54ed301099bf2e28d--dressmaking-john-lewis.jpg"
  },
  paper:{
    name:"Paper",
    img:"https://m.media-amazon.com/images/I/61OorFhm6SL._AC_SX466_.jpg"
  }
};

function App() {
  const [userSelect,setUserSelect] = useState(null);
  const [computerSelect,setComputerSelect] = useState(null);
  const [result,setResult]=useState("");

  const play=(userChoice)=>{
    setUserSelect(choice[userChoice]);
    let computerChoice = randomChice();
    setComputerSelect(computerChoice);
    setResult(judgement(choice[userChoice],computerChoice)); //판단하는 함수 (유저값,컴퓨터 값)
  };

  const judgement = (user,computer)=>{
    console.log("user",user,"computer",computer);

    // user == comoputer  tie(비김)
    // user == rock, computer == "scissors" user win(이김)
    // user == rock, computer == "paper" user lose(짐)

    if(user.name == computer.name){
      return "tie"
    }else if(user.name == "Rock"){
      return computer.name == "Scissors" ? "win" : "lose" ;
    }else if(user.name == "Scissors" ){
      return computer.name == "Paper" ? "win" : "lose" ;
    }else if(user.name == "Paper" ){
      return computer.name == "Rock" ? "win" : "lose" ;
    }
  }

  const randomChice=()=>{
    let itemArray = Object.keys(choice); //객체의 키값만 뽑아서 배열로 만들어주는 함수.
    console.log("item array",itemArray);
    let randomItem = Math.floor(Math.random()*itemArray.length);  // Math.random() => 0~1 사이의 랜덤한 값
                                                                  // Math.floor() => 버림
    console.log("random value",randomItem);
    let final = itemArray[randomItem]
    console.log("final",final);
    return choice[final];
  }

  return (
    <div>
      <div className="main">
        <Box title="You" item={userSelect} result={result}/>
        <Box title="Computer" item={computerSelect} result={result}/>
        
      </div>
      <div className="main">
        <button onClick={() => play("scissors")}>가위</button>
        <button onClick={() => play("rock")}>바위</button>
        <button onClick={() => play("paper")}>보</button>
      </div>
    </div>
  );
}

export default App;
