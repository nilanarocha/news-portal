import React, { Component } from 'react';
import BaseLayout from './BaseLayout';
import axios from 'axios';


class NewsPage extends Component {
  state = {
    news: null
  };

  async componentDidMount() {
    try {
      const response = await axios.get('http://localhost:3000/api/news/1');
      this.setState({
        news: response.data
      });
      console.log(response);
    } catch (error) {
      console.log(error);
    }
  }

  render() {
    const { news } = this.state;

    if (news === null) {
      return null;
    }
    return (
      <BaseLayout>
        <div>
          <img src={news.image} width="200" />
          <h1>{news.title}</h1>
          <p>{news.headline}</p>
          <p>{news.date}</p>
          <p>{news.category.name}</p>
          <p>by {news.author.name}</p>
          <div>{news.description}</div>


        </div>
      </BaseLayout>
    )
  }
}

export default NewsPage;