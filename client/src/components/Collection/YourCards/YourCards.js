import './YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'


export default function YourCards({ user, userCards, setUserCards, handleBackClick, signedIn }) {
  document.title = 'Pocket Pros - Your Cards';
  let [selectedRarity, setSelectedRarity] = useState('all')

  let uniqueCards = [];
  userCards.forEach(card => {
    let details = card.character.id + '-' + card.rarity
    if (!uniqueCards.includes(details)) { uniqueCards.push(details) }
  })


  let filteredCards = userCards.filter(card => card.rarity === selectedRarity || selectedRarity === 'all')

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

  let rarities = ['all', 'bronze', 'silver', 'gold', 'holo']
  let raritiesToDisplay = rarities.map(rarity => {
    let rarityClassName = selectedRarity === rarity ? 'yourCards-tab selected' : 'yourCards-tab'
    return (
      <div key={rarity} className={rarityClassName} onClick={handleClickTab}>{rarity.toUpperCase()}</div>
    )
  })

  function handleClickTab(e) {
    setSelectedRarity(e.target.textContent.toLowerCase())
  }

  return (
    <React.Fragment>
      <div className='displayCards-page'>
        <div className='yourCards-filter-container'>
        <div className='count-container'>
            <div className='yourCards-Cards-Count'>CARDS:{userCards.length}</div>
            <div className='yourCards-Cards-Count'>UNIQUE:{uniqueCards.length}</div>
          </div>

          {raritiesToDisplay}
        </div>
        <div className='yourCards-container'>
          {displayCards(filteredCards)}
        </div>
        <div className="back_button-yc" onClick={() => navigate('/collection')}>
          <div className></div>
          <div className="log-in-title" >
            <h3>Back</h3>
          </div>
        </div>
      </div>

    </React.Fragment>


  )
}