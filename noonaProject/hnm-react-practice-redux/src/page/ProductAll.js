import React, { useEffect, useState } from 'react'
import { Container , Row , Col} from 'react-bootstrap';
import ProductCard from '../component/ProductCard';
import {useSearchParams} from "react-router-dom";
import {productAction} from "../redux/actions/productAction";
import { useDispatch , useSelector} from 'react-redux';

const ProductAll = () => {
    const productList = useSelector((state) => state.product.productList);
    const [query, setQuery] = useSearchParams();
    let [error, setError] = useState("");
    const dispatch = useDispatch();

    const getProducts = ()=>{
      let searchQuery = query.get('q') || "";
      console.log("쿼리값은?",searchQuery);
      dispatch(productAction.getProducts(searchQuery));
    
    }

    useEffect(()=>{
        getProducts();
    },[query]);
    
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
