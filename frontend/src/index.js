import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Route } from "react-router-dom";
import { Provider } from 'react-redux';


import configureStore from './store/configureStore';
import './assets/temp.css';

import Board from "./containers/Board/Board";


// import {createBrowserHistory} from 'history';
// import { syncHistoryWithStore } from 'react-router-redux';




// import reportWebVitals from './reportWebVitals';

const store = configureStore();
// const browserHistory = createBrowserHistory();
// const history = syncHistoryWithStore(browserHistory, store);


// import App from './App';

/* eslint-disable global-require */
// require('babel-polyfill');
/* eslint-enable global-require */


ReactDOM.render(
    <Provider store={store}>
        {/*<BrowserRouter history={history} routes={routes} />*/}
        {/*<BrowserRouter routes={routes} />*/}
        <Router>
            <Route path="/" component={Board}/>
        </Router>
    </Provider>,
    document.getElementById('root')
);












// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
// reportWebVitals();
