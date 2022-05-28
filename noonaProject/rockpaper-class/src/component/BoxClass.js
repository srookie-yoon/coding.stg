import React, { Component } from 'react'

export default class BoxClass extends Component {
  constructor() {
    super();
    this.result = "";
  }
  getResult = () => {
    // 컴퓨터일때 반대로.. 단! 처음이거나("") 비겼을 땐 제외.
    this.result = this.props.result;
    if(this.props.title === "Computer" && this.props.result !== "" && this.props.result !== "tie"){
      this.result = this.props.result === "win"? "lose": "win";
    }
  }
  render() {
    this.getResult();
    return (
      <div className={`box ${this.result}`}> 
        <h1>{this.props.title}</h1>
        <h2 data-testid="item-name">{this.props.item && this.props.item.name}</h2>
        <img className ="item-img" src={this.props.item && this.props.item.img}/>
        <h2>{this.result}</h2>
      </div>
    )
  }
}
