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

  function handleSignUpClick(){
    setUsername('');
    setPassword('');
    navigate('/signup')
  }

  function handleAuthClick(){
    setUsername('');
    setPassword('');
    navigate('/auth')
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
          <form className="log-in-container">
            <input className='login-input' type="email" placeholder="Email" value={username} onChange={(e) => setUsername(e.target.value)} />
            <input className='login-input' type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
            {/* <a className='modal-a' href="#">Forgot your password?</a> */}
            <button className='login-button' onClick={handleLogInSubmit}>Sign In</button>
          </form>
        </div>
        <div className="menu__slot" onClick={handleSignUpClick}>
            <div className="blackscreen"></div>
            <div className="char hamilton"></div>
            <div className="slot-item-3">
              <h3>Sign Up</h3>
              <p></p>
            </div>
          </div>
          <div className="menu__slot" onClick={handleAuthClick}>
            <div className="blackscreen"></div>
            <div className="char turing"></div>
            <div className="slot-item-4">
              <h3>Back</h3>
              <p></p>
            </div>
          </div>


      </div>
    </React.Fragment>
  );
}

