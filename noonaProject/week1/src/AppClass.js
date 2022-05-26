import React, { Component } from 'react'
import BoxClass from"./component/BoxClass"
export default class AppClass extends Component {

    constructor(props){ //생성자 : 컴포넌트가 실행되자 마자 호출이 되는 함수
        super(props)
        this.state = {
            counter2:0,
            num:1,
            value:0,
        };
        console.log("constructor");
    }
    increase = () => {
        this.setState({counter2:this.state.counter2 + 1,
            value:this.state.value + 1
        });
        console.log("increase function",this.state);
        //비동기적으로 처리되느라 아직 증가가 되지 않는 것을 확인
    };
    componentDidMount(){
        //api 콜
        console.log("componentDidMount");
    }
    componentDidUpdate(){
        console.log("componentDidUpdate",this.state);
        //여기서는 최신 업데이트 된 state값인 것을 확인 할 수 있음
    }
    render() {
        console.log("render");
        return (
            <div>
                <div>state : {this.state.counter2}</div>
                <button onClick={this.increase}>클릭!</button>
                {this.state.counter2<3 && <BoxClass num={this.state.value} />}
            </div>
        );
        //자바스크립트랑 HTML이랑 섞어서 작업을 해주고 싶으면 { 이 안에서 자바스크립트 }

    }
}
