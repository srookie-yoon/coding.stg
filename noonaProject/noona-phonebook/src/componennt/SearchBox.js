import React, { useState } from "react";
import { useSelector, useDispatch } from "react-redux";
import {Form,Button,Row,Col} from "react-bootstrap"

const SearchBox = () => {
    let [keyword, setKeyword] = useState("");
    let dispatch = useDispatch();
    const searchByName = (event) => {
        event.preventDefault();
        dispatch({ type: "SEARCH_BY_USERNAME", payload: { keyword } });
    };
  return (
    <Form onSubmit={searchByName}>
        <Row>
        <Col lg={6}>
            <Form.Control type="text" placeholder="이름을 입력해주세요"
                onChange={(event) => setKeyword(event.target.value)}
                />
        </Col>
        <Col lg={2}>
            <Button type="submit">찾기</Button>
        </Col>
        </Row>
    </Form>
  )
}

export default SearchBox
