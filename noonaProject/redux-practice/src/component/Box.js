import React from 'react'
import { useSelector } from 'react-redux'
import GradSonBox from './GradSonBox'
const Box = () => {
    let count = useSelector(state=>state.count)
  return (
    <div>
      this is box { count }
      <GradSonBox/>
    </div>
  )
}

export default Box
