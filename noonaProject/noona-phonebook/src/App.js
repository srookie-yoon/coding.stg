import logo from './logo.svg';
import './App.css';
import "bootstrap/dist/css/bootstrap.min.css"
import { Container ,Row ,Col } from 'react-bootstrap';
import ContactForm from './componennt/ContactForm';
import ContactList from './componennt/ContactList';

//1. 왼쪽에는 연락처를 등록하는 폼이있음
//   오른쪽에는 연락처 리스트와 search 창 존재
//2. 리스트에 유저 이름과 전화번호를 추가할 수 있다.
//3. 리스트에 아이템이 몇개있는지 보인다.
//4. 사용자가 유저를 이름검색으로 찾을 수 있다.

function App() {
  return (
    <div className="App">
      <h1 className="title">연락처</h1>
      <Container>
        <Row>
          <Col>
            <ContactForm/>
          </Col>
          <Col>
            <ContactList/>
          </Col>
        </Row>
      </Container>
    </div>
  );
}

export default App;
