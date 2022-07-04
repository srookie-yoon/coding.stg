import React, { useEffect ,useState } from 'react'
import {useParams} from "react-router-dom"
import { Col, Row, Container ,Dropdown ,Button } from "react-bootstrap";

const ProductDetail = () => {
  let {id} = useParams();
  const[product,setProduct]=useState(null)
  const getProductDetail= async ()=>{
    let url = `https://my-json-server.typicode.com/srookie-yoon/myJsonSever/products/${id}`;
    let response = await fetch(url);
    let data = await response.json();
    console.log(data);
    setProduct(data);
  }
  useEffect(()=>{
    getProductDetail();
  },[])
  return (
    <Container className="product-detail-card">
      <Row>
        <Col className="product-img">
          <img src={product?.img}/>
        </Col>
        <Col>
          <div className="product-info">{product?.title}</div>
          <div className="product-info">{product?.price}</div>
          <div className="choice">
            {product?.choice === true? "Conscious choice" : ""}
          </div>
          <Dropdown className="drop-down">
            <Dropdown.Toggle variant="outline-dark" id="dropdown-basic">
              사이즈 선택
            </Dropdown.Toggle>

            <Dropdown.Menu>
              {product?.size.length > 0 &&
                product.size.map((item) => (
                  <Dropdown.Item href="">{item}</Dropdown.Item>
                ))}
            </Dropdown.Menu>
          </Dropdown>
          <Button variant="dark" className="add-button">
            추가
          </Button>



        </Col>
      </Row>
    </Container>
  )
}

export default ProductDetail
