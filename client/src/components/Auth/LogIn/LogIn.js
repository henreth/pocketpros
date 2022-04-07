import './LogIn.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function LogIn({ username, setUsername, password, setPassword, signedIn, setSignedIn, handleLogInSubmit, handleBackClick }) {
  document.title = 'Pocket Pros - Authorization Required';
  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn === true) {
      navigate('/');
    }
  }, [])

  function handleLogInClick() {
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
        </div>
        <div className="menu__slot" onClick={handleBackClick}>
            <div className="blackscreen"></div>
            <div className="char turing"></div>
            <div className="slot-item-3">
              <h3>Back</h3>
              <p></p>
            </div>
          </div>

      </div>
    </React.Fragment>
  );
}

