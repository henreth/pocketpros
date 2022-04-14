import './Edit.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Edit({ username, setUsername, signUpFirstName, setSignUpFirstName, signUpLastName, setSignUpLastName, signedIn, handleLogOut }) {
  document.title = 'Pocket Pros - Edit Account Details';
  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn === false) {
      navigate('/');
    }
  }, [])


  return (
    <React.Fragment>
      <div id="menu">
        <div className="login__slot">
          <div className></div>
          <div className="log-in-title">
            <h3>Edit Details</h3>
          </div>
          <form className="log-in-container">
            <div className='signup-input-fullname'>
              <input className='signup-input-name' type="text" placeholder="First Name" value={signUpFirstName} onChange={(e) => { setSignUpFirstName(e.target.value) }} />
              <input className='signup-input-name last' type="text" placeholder="Last Name" value={signUpLastName} onChange={(e) => { setSignUpLastName(e.target.value) }} />
            </div>
            <input className='signup-input' type="text" placeholder="Email" value={username} onChange={(e) => setUsername(e.target.value)} />
            <button className='signup-button' onClick={null} >Submit Changes</button>
          </form>
        </div>
        <div className="menu__slot" onClick={handleLogOut}>
            <div className="blackscreen"></div>
            <div className="char eich"></div>
            <div className="slot-item-3">
              <h3>Log Out</h3>
              <p></p>
            </div>
          </div>
          <div className="menu__slot" onClick={()=>{navigate('/')}}>
            <div className="blackscreen"></div>
            <div className="char larry"></div>
            <div className="slot-item-4">
              <h3>Back</h3>
              <p></p>
            </div>
          </div>


      </div>
    </React.Fragment>
  );
}

