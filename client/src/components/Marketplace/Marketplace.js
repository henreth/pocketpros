import '../Collection/YourCards/YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../Card/Card'


export default function Marketplace({ user, userCards, setUserCards, marketCards, setMarketCards, signedIn, marketSelectedRarity, setMarketSelectedRarity, marketSearchTerm, setMarketSearchTerm }) {
  document.title = 'Pocket Pros - Your Cards';
  let [sourceFilter,setSourceFilter] = useState(false)

  let sourceClass =  sourceFilter ? 'yourCards-source-tab source-selected' : 'yourCards-source-tab'

  function handleClickSource(){
    setSourceFilter(!sourceFilter);
  }

  function handleSearchChange(e) {
    setMarketSearchTerm(e.target.value);
  }

  let filteredCards = marketCards.filter(card => card.rarity === marketSelectedRarity || marketSelectedRarity === 'all').filter(card => card.character.first_name.toLowerCase().includes(marketSearchTerm.toLowerCase()) || card.character.last_name.toLowerCase().includes(marketSearchTerm.toLowerCase()) || marketSearchTerm.toLowerCase().includes(card.character.first_name.toLowerCase()) || marketSearchTerm.toLowerCase().includes(card.character.last_name.toLowerCase()) || marketSearchTerm === '').filter(card=>card.user.id===user.id || sourceFilter===false)

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
    let rarityClassName = marketSelectedRarity === rarity ? 'yourCards-tab selected' : 'yourCards-tab'
    return (
      <div key={rarity} className={rarityClassName} onClick={handleClickTab}>{rarity.toUpperCase()}</div>
    )
  })

  function handleClickTab(e) {
    setMarketSelectedRarity(e.target.textContent.toLowerCase())
  }

  function handleClickBack() {
    navigate('/')
    setMarketSearchTerm('')
    setMarketSelectedRarity('all')
  }

  return (
    <React.Fragment>
      <div className='displayCards-page'>
        <div className='yourCards-overlay'></div>
        <div className='yourCards-source-container'>
          <div className={sourceClass} onClick={handleClickSource}>Your Cards</div>
        </div>
        <div className='yourCards-filter-container'>
          {raritiesToDisplay}
          <input className='search-input' type='text' placeholder='SEARCH' value={marketSearchTerm} onChange={handleSearchChange}></input>
        </div>
        <div className='yourCards-container'>
          {displayCards(filteredCards)}
        </div>
        <div className="back_button-yc" onClick={handleClickBack}>
          <div className></div>
          <div className="log-in-title" >
            <h3>Back</h3>
          </div>
        </div>
      </div>

    </React.Fragment>


  )
}