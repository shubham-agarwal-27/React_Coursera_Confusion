import React, { Component } from 'react';
import { Navbar, NavbarBrand } from 'reactstrap';
import './App.css';
import Menu from './components/MenuComponent';
import { DISHES } from './shared/dishes';

class App extends Component {

  constructor(props) {
    super(props);

    this.state = {
      dishes: DISHES
    }
  }

  render() {
    return (
      <div>
        <Navbar dark color="primary">

          <div className="container">
            <NavbarBrand href="/"> HELLO WORLD</NavbarBrand>
          </div>
        </Navbar>
        
      </div>
    );
  }
}

export default App;
