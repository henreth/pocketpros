import './LogIn.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function LogIn({signedIn,setSignedIn}) {
  document.title = 'Pocket Pros - Authorization Required';
  let navigate = useNavigate();


  function handleLogInClick(){
    setSignedIn(true)
    navigate('/')
  }


  return (
    <React.Fragment>
      <div id="video-overlay"></div>
      <div id="menu">
        <div className="login__slot" onClick={handleLogInClick}>
        <div className="blackscreen"></div>
          <div className="log-in-title">
            <h3>Log In</h3>
            <p></p>
          </div>
          {/* <div className="char larry"></div> */}
          {/* <div className="slot-item-1">
            <h3>Log In</h3>
            <p></p>
          </div> */}
        </div>
      </div>
    </React.Fragment>
  );
}

