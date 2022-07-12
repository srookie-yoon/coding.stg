import {combineReducers} from "redux";
import authenticateReducer from "./authenticateReducer";
import producerReducer from "./productReducer";

export default combineReducers({
    auth: authenticateReducer,
    product: producerReducer,
});
