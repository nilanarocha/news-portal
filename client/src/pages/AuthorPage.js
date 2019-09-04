import React, { Component } from 'react';
import BaseLayout from './BaseLayout';
import axios from 'axios';


class AuthorPage extends Component {
  state = {
    author: null
  };

  async componentDidMount() {
    try {
      const response = await axios.get('http://localhost:3000/api/author/2');
      this.setState({
        author: response.data
      });
      console.log(response);
    } catch (error) {
      console.log(error);
    }
  }

  render() {
    const { author } = this.state;

    if (author === null) {
      return null;
    }
    return (
      <BaseLayout>
        <div>
          <img src={author.image} width="200" />
          <h1>{author.name}</h1>
          <div>{author.description}</div>
        </div>
      </BaseLayout>
    )
  }
}

export default AuthorPage;