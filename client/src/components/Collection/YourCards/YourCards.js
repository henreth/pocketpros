import './YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'

// add ashnc await to the cards element query selector 

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
        // <div key={card.id} className="card"><div className="noImage">{card.rarity} {card.character.first_name} {card.character.last_name}</div></div>
        <Card key={card.id} char={card}/>
      )
    })
  }

  return (
    <div className='yourCards-container'>
      <div className="card"><div className="noImage">1</div></div>
      {displayCards(userCards.splice(0, 4))}
      {/* <div class="card"><div class="noImage">2</div></div>
          <div class="card"><div class="noImage">3</div></div>
          <div class="card"><div class="noImage">4</div></div>
          <div class="card"><div class="noImage">5</div></div> */}
    </div>
  )
}