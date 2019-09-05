import React, { Component } from "react";
import { Link } from "react-router-dom";
import BaseLayout from "./BaseLayout";
import axios from "axios";

class SearchPage extends Component {
  state = {
    search: []
  };

  async componentDidMount() {
    try {
      const response = await axios.get("http://localhost:3000/api/search");
      this.setState({
        search: response.data
      });
      console.log(response);
    } catch (error) {
      console.log(error);
    }
  }

  render() {
    const { search } = this.state;

    if (search.length === 0) {
      return null;
    }
    return (
      <BaseLayout>
        <div>
          <h1>{search.name}</h1>
          {search.map(item => {
            return (
              <Link key={item.id} to={`/news/${item.id}`}>
                <div>
                  <img src={item.image} alt="author" width="100" />
                  <h3>{item.title}</h3>
                  <div>{item.description}</div>
                </div>
              </Link>
            );
          })}
        </div>
      </BaseLayout>
    );
  }
}

export default SearchPage;
