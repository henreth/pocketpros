import './App.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Home from '../Home/Home'
import Collection from '../Collection/Collection'
import Auth from '../Auth/Auth';



export default function App() {

  let navigate = useNavigate();
  function handleClick() {
    navigate("/");
  }

  return (
    <React.Fragment>
      {/* <div>APP</div> */}
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/collection" element={<Collection handleClick={handleClick} />} />
        <Route path="/login" element={<Auth />} />
      </Routes>
    </React.Fragment>
  );
}

