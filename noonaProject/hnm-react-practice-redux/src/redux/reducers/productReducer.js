// let initialState={
//     productList : [],
//     selectedItem: null,
// }


// function producerReducer(state = initialState, action){

//     let {type,payload} = action;
//     switch(type){
//         case "GET_PRODUCT_SUCCESS":
//             return {...state, productList : payload.data};
//         case "GET_SINGLE_PRODUCT_SUCCESS":
//             return { ...state, selectedItem: payload.data };
//         default:
//             return {...state};
//     }

// }
// export default producerReducer;

//npm install @reduxjs/toolkit 를 이용하여 최신문법으로 변경

import { createSlice } from "@reduxjs/toolkit"

let initialState={
    productList : [],
    selectedItem: null,
}

const productSlice = createSlice({
    name:"product",
    initialState,
    reducers:{
        getAllProducts(state,action){
           state.productList = action.payload.data;
        }
        ,getSingleProduct(state,action){
            state.selectedItem = action.payload.data;
        }
    }
});

console.log("ppp",productSlice);

export const productActoins = productSlice.actions;
export default productSlice.reducer;
