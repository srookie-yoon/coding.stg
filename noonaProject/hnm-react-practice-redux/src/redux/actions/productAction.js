//미들웨어 함수들을 쫙 만들 예정

function getProducts(searchQuery){
    return async (dispatch, getState) => {
        let url = `https://my-json-server.typicode.com/srookie-yoon/myJsonSever/products?q=${searchQuery}`;
        let response =  await fetch(url);
        let data = await response.json();
        console.log(data);
        dispatch({ type: "GET_PRODUCT_SUCCESS", payload: { data } });
    };
    
};


function getProductDetail(id) {
    return async (dispatch) => {
        let url = `https://my-json-server.typicode.com/srookie-yoon/myJsonSever/products/${id}`;
        let response = await fetch(url);
        let data = await response.json();
        console.log(data);
        dispatch({ type: "GET_SINGLE_PRODUCT_SUCCESS", payload: { data } });
    };
}

export const productAction = { getProducts, getProductDetail };
