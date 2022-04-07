import './LogIn.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function LogIn({username, setUsername, password, setPassword, signedIn,setSignedIn,handleLogInSubmit}) {
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
        <div className="login__slot">
        <div className></div>
          <div className="log-in-title">
            <h3>Log In</h3>
          </div>
          <div className="log-in-container"> 
            <input className='login-input' type="email" placeholder="Email" value={username} onChange={(e) => setUsername(e.target.value)} />
            <input className='login-input' type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
            {/* <a className='modal-a' href="#">Forgot your password?</a> */}
            <button className='login-button' onClick={handleLogInSubmit}>Sign In</button>
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

