import './SignUp.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function SignUp({username, setUsername, password, setPassword, signedIn,setSignedIn, signUpFirstName, setSignUpFirstName, signUpLastName, setSignUpLastName,signUpPasswordConfirmation, setSignUpPasswordConfirmation, handleSignUpSubmit, handleBackClick}) {
  document.title = 'Pocket Pros - Log In Required';
  let navigate = useNavigate();


  return (
    <React.Fragment>
      <div id="video-overlay"></div>
      <div id="menu">
      <div className="menu__slot" onClick={handleBackClick}>
            <div className="blackscreen"></div>
            <div className="char turing"></div>
            <div className="slot-item-3">
              <h3>Back</h3>
              <p></p>
            </div>
          </div>

        <div className="signup__slot">
        <div className></div>
          <div className="log-in-title">
            <h3>Sign Up</h3>
          </div>
          <div className="log-in-container"> 
          <div className='signup-input-fullname'>
                                <input className='signup-input-name' type="text" placeholder="First Name" value={signUpFirstName} onChange={(e) => { setSignUpFirstName(e.target.value) }} />
                                <input className='signup-input-name last' type="text" placeholder="Last Name" value={signUpLastName} onChange={(e) => { setSignUpLastName(e.target.value) }} />
                            </div>
                            <input className='signup-input' type="text" placeholder="Email" value={username} onChange={(e) => setUsername(e.target.value)} />
                            <input className='signup-input' type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
                            <input className='signup-input' type="password" placeholder="Password Confirmation" value={signUpPasswordConfirmation} onChange={(e) => setSignUpPasswordConfirmation(e.target.value)} />
                            <button className='signup-button' onClick={handleSignUpSubmit} >Sign Up</button>            </div>
        </div>
      </div>
    </React.Fragment>
  );
}

