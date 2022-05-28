import React, { useState } from 'react'
import { Button } from 'react-bootstrap';

const WeatherButton = ({cities,selectedCity,handleCityChange}) => {
    console.log("cities?",cities);

    return (
        <div>
        
        <Button variant={`${selectedCity == null ? "outline-warning" : "warning"}`} 
                onClick={() => handleCityChange("current")}>Current Location</Button>

        {cities.map((item, index)=>(
            <Button variant={selectedCity == item ? "outline-warning" : "warning"} 
                    key={index} 
                    onClick={()=>handleCityChange(item)}>
                {item}
            </Button>
            ))}
        </div>
    )
}

export default WeatherButton