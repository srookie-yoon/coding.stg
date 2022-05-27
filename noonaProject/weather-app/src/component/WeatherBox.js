import React from 'react'


//const WeatherBox = (props) => { 로 선언하여 props.###  형식으로도 사용할 수 있지만
//Destructuring 방식을 사용하여 심플하게 만들 수 있다.
const WeatherBox = ({weather}) => {
    console.log("weather? ",weather);
  return (
    <div className="weather-box">
      {/* 둘 다 가능! <div>{weather && weather.name}</div>*/}
      <div>{weather?.name}</div>
      <h2>{weather?.main.temp}C / {Math.round(weather?.main.temp * 18 + 32)}화씨</h2>
      <h3>{weather?.weather[0].description}</h3>
    </div>
  )
}

export default WeatherBox
