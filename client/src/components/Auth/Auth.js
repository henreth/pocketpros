import './Auth.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Auth({signedIn,setSignedIn}) {
  document.title = 'Pocket Pros - Log In Required';
  let navigate = useNavigate();

  useEffect(()=>{
    if (signedIn===true){
      navigate('/');
    }
  },[])

  // navigate('/login')

  function handleLogInClick(){
    navigate('/login')
  }

  function handleSignUpClick(){
    navigate('/signup')
  }

  return (
    <React.Fragment>
      <div id="video-overlay"></div>
      <div id="menu">
        <div className="menu__slot" onClick={handleLogInClick}>
          <div className="blackscreen"></div>
          <div className="char jobs"></div>
          <div className="slot-item-1">
            <h3>Log In</h3>
            <p></p>
          </div>
        </div>
        <div className="menu__slot" onClick={handleSignUpClick}>
          <div className="blackscreen"></div>
          <div className="char kjohnson"></div>
          <div className="slot-item-2">
            <h3>Sign Up</h3>
            <p></p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

