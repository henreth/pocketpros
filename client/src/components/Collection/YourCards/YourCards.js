import './YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'
import CardInformation from './CardInformation/CardInformation';


export default function YourCards({ user, userCards, setUserCards, marketCards, setMarketCards, handleBackClick, signedIn, users, setMarketSearchTerm, setMarketSelectedRarity }) {
  document.title = 'Pocket Pros - Your Cards';
  let [showModal, setShowModal] = useState(false);
  let [selectedCard, setSelectedCard] = useState(userCards[0])
  let [selectedRarity, setSelectedRarity] = useState('all')
  let [searchTerm, setSearchTerm] = useState('');

  //  * for additional information 
  let [numCardOwners, setNumCardOwners] = useState(0)
  let [numOthercards, setNumOtherCards] = useState(0)
  let [allCardTransactions, setAllCardTransactions] = useState([])
  let [activeListings, setActiveListings] = useState([])
  let [selectedTab, setSelectedTab] = useState('SALE PRICE')

  function handleSearchChange(e) {
    setSearchTerm(e.target.value);
  }

  let uniqueCards = [];
  userCards.forEach(card => {
    let details = card.character.id + '-' + card.rarity
    if (!uniqueCards.includes(details)) { uniqueCards.push(details) }
  })


  let filteredCards = userCards.filter(card => card.rarity === selectedRarity || selectedRarity === 'all').filter(card => card.character.first_name.toLowerCase().includes(searchTerm.toLowerCase()) || card.character.last_name.toLowerCase().includes(searchTerm.toLowerCase()) || searchTerm.toLowerCase().includes(card.character.first_name.toLowerCase()) || searchTerm.toLowerCase().includes(card.character.last_name.toLowerCase())  || searchTerm === '').sort((card1,card2)=>{card1.character.first_name.localeCompare(card2.character.first_name)})

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])



  function displayCards(data) {
    return data.map(card => {
      return (
        <Card key={card.id} card={card} setShowModal={setShowModal} setSelectedCard={setSelectedCard} setNumCardOwners={setNumCardOwners} setNumOtherCards={setNumOtherCards} setAllCardTransactions={setAllCardTransactions} setActiveListings={setActiveListings} setSelectedTab={setSelectedTab} />
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

  // function handleClickCard() {
  //   setShowModal(true);
  // }


  return (
    <React.Fragment>
      <div className='displayCards-page'>
        <div className='yourCards-overlay'></div>
        <div className='count-container'>
            <div className='yourCards-Cards-Count'>CARDS:<b>{userCards.length}</b></div>
            <div className='yourCards-Cards-Count'>UNIQUE:<b>{uniqueCards.length}</b></div>
          </div>
        <div className='yourCards-filter-container'>
          {raritiesToDisplay}
          <input className='search-input' type='text' placeholder='SEARCH' onChange={handleSearchChange}></input>
        </div>
        <div className='yourCards-container'>
          {displayCards(filteredCards)}
        </div>
        <div className="back_button-yc" onClick={() => navigate('/collection')}>
          <div className="log-in-title" >
            <h3>Back</h3>
          </div>
        </div>
      </div>
      {selectedCard != {} ? <CardInformation
        selectedCard={selectedCard}
        setSelectedCard={setSelectedCard}
        showModal={showModal}
        setShowModal={setShowModal}
        users={users}
        userCards={userCards}
        setUserCards={setUserCards}
        marketCards={marketCards}
        setMarketCards={setMarketCards}
        numCardOwners={numCardOwners}
        numOthercards={numOthercards}
        allCardTransactions={allCardTransactions}
        activeListings={activeListings}
        selectedTab={selectedTab}
        setSelectedTab={setSelectedTab}
        setMarketSearchTerm={setMarketSearchTerm}
        setMarketSelectedRarity={setMarketSelectedRarity}
      /> : null}
    </React.Fragment>


  )
}