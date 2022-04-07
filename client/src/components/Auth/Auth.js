import './Auth.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Auth() {
  let navigate = useNavigate();
  return (
    <React.Fragment>
      <div id="video-overlay"></div>
      <div id="menu">
        <div className="menu__slot" onClick={() => { navigate('/') }}>
          <div className="blackscreen"></div>
          <div className="char larry"></div>
          <div className="slot-item-1">
            <h3>Log In</h3>
            <p>View your current collection and open any unused packs.</p>
          </div>
        </div>
        <div className="menu__slot">
          <div className="blackscreen"></div>
          <div className="char hopper"></div>
          <div className="slot-item-2">
            <h3>Sign Up</h3>
            <p>Use credits in order to buy more card packs.</p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

