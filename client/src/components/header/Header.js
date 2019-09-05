import React, { Component } from "react";
import { Link } from "react-router-dom";
import "./Header.css";

class Header extends Component {
  render() {
    return (
      <header>
        <Link to="/">Home</Link>
        <Link to="/author">Author</Link>
        <Link to="/search">Search</Link>
      </header>
    );
  }
}

export default Header;
