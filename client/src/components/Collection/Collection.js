import './Collection.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Collection({ signedIn, handleClick }) {
  document.title = 'Pocket Pros - Collection';

  let navigate = useNavigate();

  useEffect(()=>{
    if (signedIn==false){
      navigate('/');
    }
  },[])
  return (
    <React.Fragment>
      <div id="video-overlay"></div>
      <div id="menu">
        <div className="menu__slot" onClick={() => { navigate('/') }}>
          <div className="blackscreen"></div>
          <div className="char larry"></div>
          <div className="slot-item-1">
            <h3>Your Cards</h3>
            <p>View your current collection and open any unused packs.</p>
          </div>
        </div>
        <div className="menu__slot">
          <div className="blackscreen"></div>
          <div className="char hopper"></div>
          <div className="slot-item-2">
            <h3>Open Packs</h3>
            <p>Use credits in order to buy more card packs.</p>
          </div>
        </div>
        <div className="menu__slot" onClick={() => { navigate('/') }}>
          <div className="blackscreen"></div>
          <div className="char tukey"></div>
          <div className="slot-item-3">
            <h3>Back</h3>
            <p></p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

