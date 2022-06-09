import { useState } from 'react';
import './App.css';
import Homepage from './page/Homepage';
import Aboutpage from './page/Aboutpage';
import { Routes, Route , Navigate} from "react-router-dom";
import ProductPage from './page/ProductPage';
import ProductDetailPage from './page/ProductDetailPage';
import LoginPage from './page/LoginPage';
import UserPage from './page/UserPage';

function App() {
  const [authenticate,setAuthenticate] = useState(true);
  //대문자라 컴포넌트임
  const PrivateRoute = () =>{
    // 유저가 로그인을 안했다면 로그인페이지 보여주기
    // Navigate 는 컴포넌트 리다이렉트를 할 수 있음. 여기서 to에 url 입력하면 하단에 설정한 path에 맞게 이동하게 됨.
    return authenticate == true ? <UserPage/>:<Navigate to="/login"/>;
  }
  return (
    <div>
      <Routes>
        <Route path="/" element={<Homepage />} />
        <Route path="/about" element={<Aboutpage />} />
        <Route path="/products" element={<ProductPage/>} />
        <Route path="/products/:id" element={<ProductDetailPage/>} />
        <Route path="/login" element={<LoginPage/>} />
        <Route path="/user" element={<PrivateRoute/>} />
      </Routes>
    </div>
  );
}

export default App;
