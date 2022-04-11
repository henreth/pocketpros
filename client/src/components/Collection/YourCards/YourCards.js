import './YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'


export default function YourCards({ user, userCards, setUserCards, handleBackClick, signedIn }) {
  document.title = 'Pocket Pros - Your Cards';

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])



  function displayCards(data) {
    return data.map(card => {
      return (
        <Card key={card.id} char={card} />
      )
    })
  }

  return (
    <React.Fragment>
      <div className='displayCards-page'>
        <div className='yourCards-container'>
          {displayCards(userCards)}
        </div>

      </div>
      <div className="back_button-yc" onClick={() => navigate('/collection')}>
        <div className></div>
        <div className="log-in-title" >
          <h3>Back</h3>
        </div>
      </div>
    </React.Fragment>


  )
}