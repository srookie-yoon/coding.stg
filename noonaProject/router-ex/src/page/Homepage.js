import React from 'react'
import { Link, useNavigate } from "react-router-dom"
const Homepage = () => {
    //1. Link 활용 페이지 전환

    const navigate = useNavigate();
    const goProductPage=()=>{
        navigate('/products?q=pants');
    }
  return (
    <div>
      <h1>Homepage</h1>
      <Link to="/about">Go to about page</Link>
      <button onClick={goProductPage}>go to product page</button>
    </div>
  )
}

export default Homepage
