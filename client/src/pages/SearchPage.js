import React, { Component } from "react";
import { Link } from "react-router-dom";
import BaseLayout from "./BaseLayout";
import queryString from "query-string";
import axios from "axios";

class SearchPage extends Component {
  state = {
    search: []
  };

  async componentDidMount() {
    try {
      const search = [];
      const values = queryString.parse(this.props.location.search);

      if (values.search) {
        search.push(`search=${values.search}`);
      }
      if (values.news_category) {
        search.push(`news_category=${values.news_category}`);
      }

      const response = await axios.get(
        `http://localhost:3000/api/search?${search.join("&")}`
      );
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

    return (
      <BaseLayout>
        <div>
          <h1>{search.name}</h1>
          {search.length > 0 ? (
            search.map(item => {
              return (
                <Link key={item.id} to={`/news/${item.id}`}>
                  <div>
                    <img src={item.image} alt="author" width="100" />
                    <h3>{item.title}</h3>
                    <div>{item.description}</div>
                  </div>
                </Link>
              );
            })
          ) : (
            <h3>No results</h3>
          )}
        </div>
      </BaseLayout>
    );
  }
}

export default SearchPage;
