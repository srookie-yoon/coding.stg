import React from 'react'
import {Row,Col} from "react-bootstrap"

const ContactItem = ({item}) => {
  return (
    <Row>
      <Col lg={2}>
        <img width={50} src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnme6H9VJy3qLGvuHRIX8IK4jRpjo_xUWlTw&usqp=CAU"/>
      </Col>
      <Col lg={5}>
        <div>{item.name}</div>
        <div>{item.phoneNumber}</div>
      </Col>
    </Row>
  )
}

export default ContactItem
