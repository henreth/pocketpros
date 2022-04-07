import './Home.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Home({ handleClick }) {
  let navigate = useNavigate();

  return (
    <React.Fragment>
      {/* <video autoplay muted loop id="bg-video">
    <source src="./background.ogv" type="video/ogg"> </source>
  </video> */}
      <div id="video-overlay"></div>
      <div id="menu">
        <div className="menu__slot" onClick={() => { navigate('/collection') }}>
          <div className="blackscreen"></div>
          <div className="char turing"></div>
          <div className="slot-item-1">
            <h3>Your Deck</h3>
            <p>View your current collection and open any unused packs.</p>
          </div>
        </div>
        <div className="menu__slot">
          <div className="blackscreen"></div>
          <div className="char hopper"></div>
          <div className="slot-item-2">
            <h3>Buy Packs</h3>
            <p>Use credits in order to buy more card packs.</p>
          </div>
        </div>
        <div className="menu__slot">
          <div className="blackscreen"></div>
          <div className="char tukey"></div>
          <div className="slot-item-3">
            <h3>Marketplace</h3>
            <p>Looking for a specific card? Check out the market for offers from other users.</p>
          </div>
        </div>
        <div className="menu__slot">
      <div className="blackscreen"></div>
      <div className="char hamilton"></div>
      <div className="slot-item-4">
      <h3>About</h3>
            <p>Learn more about Pocket Programmers and the programmer behind it.</p>
      </div>
    </div>
        <div className="menu__slot" onClick={() => { navigate('/profile ') }}>
          <div className="blackscreen"></div>
          <div className="char larry"></div>
            <div className="slot-item-5">
      <h3>Profile</h3>
      <p>View and edit your account details.</p>
          </div>
        </div>
      </div>

    </React.Fragment>
  );
}

