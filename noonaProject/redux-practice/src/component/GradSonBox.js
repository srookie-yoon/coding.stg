import React from 'react'
import { useSelector } from 'react-redux'

const GradSonBox = () => {
  let count = useSelector(state=>state.count)

  return (
    <div>
      GradSonBox {count}
    </div>
  )
}

export default GradSonBox
