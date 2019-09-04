import React from 'react';
import { HashRouter as Router, Route } from 'react-router-dom';

import NewsPage from './pages/NewsPage';
import AuthorPage from './pages/AuthorPage';

const Routes = (
    <Router>
        {/* Home */}
        <Route exact path="/" component={NewsPage} />
        <Route exact path="/author" component={AuthorPage} />
    </Router>
);

export default Routes;