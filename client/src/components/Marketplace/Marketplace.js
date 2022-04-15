import '../Collection/YourCards/YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../Card/Card'


export default function Marketplace({ user, userCards, setUserCards, marketCards,setMarketCards, signedIn }) {
  document.title = 'Pocket Pros - Your Cards';
  let [selectedRarity, setSelectedRarity] = useState('all')
  let [searchTerm, setSearchTerm] = useState('');

  function handleSearchChange(e){
    setSearchTerm(e.target.value);
  }

  // let uniqueCards = [];
  // userCards.forEach(card => {
  //   let details = card.character.id + '-' + card.rarity
  //   if (!uniqueCards.includes(details)) { uniqueCards.push(details) }
  // })


  let filteredCards = marketCards.filter(card => card.rarity === selectedRarity || selectedRarity === 'all').filter(card => card.character.first_name.toLowerCase().includes(searchTerm.toLowerCase()) || card.character.last_name.toLowerCase().includes(searchTerm.toLowerCase()) || searchTerm === '')

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
      <div className='yourCards-overlay'></div>

        <div className='yourCards-filter-container'>
          {/* <div className='count-container'>
            <div className='yourCards-Cards-Count'>CARDS:<b>{marketCards.length}</b></div>
          </div> */}
          {raritiesToDisplay}
          <input className='search-input' type='text' placeholder='SEARCH' onChange={handleSearchChange}></input>
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