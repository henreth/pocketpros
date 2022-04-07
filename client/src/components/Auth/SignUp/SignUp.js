import './SignUp.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function SignUp({username, setUsername, password, setPassword, signedIn,setSignedIn,handleLogInSubmit, signUpFirstName, setSignUpFirstName, signUpLastName, setSignUpLastName,signUpPasswordConfirmation, setSignUpPasswordConfirmation, handleSignUpSubmit}) {
  document.title = 'Pocket Pros - Log In Required';
  let navigate = useNavigate();


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
          <div className='modal-input-fullname'>
                                <input className='modal-input-name' type="text" placeholder="First Name" value={signUpFirstName} onChange={(e) => { setSignUpFirstName(e.target.value) }} />
                                <input className='modal-input-name last' type="text" placeholder="Last Name" value={signUpLastName} onChange={(e) => { setSignUpLastName(e.target.value) }} />
                            </div>
                            <input className='modal-input' type="text" placeholder="Email" value={username} onChange={(e) => setUsername(e.target.value)} />
                            <input className='modal-input' type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
                            <input className='modal-input-end' type="password" placeholder="Password Confirmation" value={signUpPasswordConfirmation} onChange={(e) => setSignUpPasswordConfirmation(e.target.value)} />
                            <button className='modal-button' onClick={handleSignUpSubmit} >Sign Up</button>            </div>
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

