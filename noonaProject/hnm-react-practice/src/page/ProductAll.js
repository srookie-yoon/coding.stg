import React, { useEffect, useState } from 'react'
import { Container , Row , Col} from 'react-bootstrap';
import ProductCard from '../component/ProductCard';
import {useSearchParams} from "react-router-dom"

const ProductAll = () => {
    const [productList, setProductList] = useState([]);
    const [query, setQuery] = useSearchParams();
    let [error, setError] = useState("");

    const getProducts = async ()=>{
      try{
        let searchQuery = query.get('q') || "";
        console.log("쿼리값은?",searchQuery);
        let url = `https://my-json-server.typicode.com/srookie-yoon/myJsonSever/products?q=${searchQuery}`;
        let response =  await fetch(url);
        let data = await response.json();
        console.log(data);
        if (data.length < 1) {
          if (searchQuery !== "") {
            setError(`${searchQuery}와 일치하는 상품이 없습니다`);
          } else {
            throw new Error("결과가 없습니다");
          }
        }
        setProductList(data);
      } catch (err) {
        setError(err.message);
      }
    }
    useEffect(()=>{
        getProducts();
    },[query])
  return (
    <div>
      <Container>
        <Row>
          {productList.length > 0 &&
            productList.map( (menu) => (
              <Col md={3} sm={12} key={menu.id}>
                <ProductCard item={menu}/>
              </Col>
            ))}
        </Row>
      </Container>
    </div>
  )
}

export default ProductAll
