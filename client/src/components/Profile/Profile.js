import './Profile.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Profile({signedIn,setSignedIn}) {
  let navigate = useNavigate();

  function handleLogOutClick(){
    console.log('working')
    setSignedIn(false);
    navigate('/');
  }

  useEffect(()=>{
    if (signedIn==false){
      navigate('/');
    }
  },[])

  return (
    <React.Fragment>
      <div id="video-overlay"></div>
      <div id="menu">
        <div className="menu__slot" onClick={() => {setSignedIn(true)}}>
          <div className="blackscreen"></div>
          <div className="char larry"></div>
          <div className="slot-item-1">
            <h3>Edit Account</h3>
            <p></p>
          </div>
        </div>
        <div className="menu__slot" onClick={handleLogOutClick}>
          <div className="blackscreen"></div>
          <div className="char hopper"></div>
          <div className="slot-item-2">
            <h3>Log Out</h3>
            <p></p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

