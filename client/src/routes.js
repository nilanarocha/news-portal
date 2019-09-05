import React from "react";
import { HashRouter as Router, Route } from "react-router-dom";

import NewsPage from "./pages/NewsPage";
import AuthorPage from "./pages/AuthorPage";
import SearchPage from "./pages/SearchPage";
import HomePage from "./pages/HomePage";
import NewsCategoryPage from "./pages/NewsCategoryPage";

const Routes = (
  <Router>
    {/* Home */}
    <Route exact path="/" component={HomePage} />
    <Route exact path="/news/:id/:title" component={NewsPage} />
    <Route exact path="/news/:category" component={NewsCategoryPage} />
    <Route exact path="/author" component={AuthorPage} />
    <Route exact path="/search" component={SearchPage} />
  </Router>
);

export default Routes;
