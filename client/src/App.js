import React, {Component} from 'react';
import {useState, useEffect} from "react"; 
import Navbar from "./components/Navbar";
import { BrowserRouter as Router, Switch, Route} from "react-router-dom";
import './App.css';
import FoodTrucker from "./components/FoodTrucker";
import Home from './components/Home';

function App() {

  const [foodies, setFoodies] = useState([]);
  const [trucks, setFoodTrucks] = useState([]);
  useEffect(() => {
    fetch("/foodie_owners")
      .then((r) => r.json())
      .then((data) => setFoodies(data));
  }, []);

  useEffect(() => {
    fetch("/food_trucks")
      .then((r) => r.json())
      .then((data) => setFoodTrucks(data));
  }, []);

  return (
    <>
    <Router>
    <div className="App">
        <Navbar/>
      <Switch>
        <Route exact path="/">
          <section>
            <Home/>
          </section>
        </Route>
        <Route exact path="/trucks">
        <section className="layout">
          <FoodTrucker truck={trucks}/>
          </section> 
        </Route>
      </Switch>
      
    </div>
    </Router>
    </>
   
  );
}

export default App;
