import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import MarketCard from './MarketCard/MarketCard';
import '../Collection/YourCards/YourCards.css';

import MarketInformation from './MarketInformation/MarketInformation';


export default function Marketplace({ user, setUser, users, userCards, setUserCards, marketCards, setMarketCards, signedIn, marketSelectedRarity, setMarketSelectedRarity, marketSearchTerm, setMarketSearchTerm }) {
  document.title = 'Pocket Pros - Marketplace';

  let [showModal, setShowModal] = useState(false);
  let [selectedCard, setSelectedCard] = useState(marketCards[0])
  let [numCardOwners, setNumCardOwners] = useState(0)
  let [numOthercards, setNumOtherCards] = useState(0)
  let [allCardTransactions, setAllCardTransactions] = useState([])
  let [activeListings, setActiveListings] = useState([])
  let [selectedTab, setSelectedTab] = useState('SALE PRICE')

  let [listedByUser,setListedByUser] = useState(false)




  let [sourceFilter, setSourceFilter] = useState(false)

  let sourceClass = sourceFilter ? 'yourCards-source-tab source-selected' : 'yourCards-source-tab'

  function handleClickSource() {
    setSourceFilter(!sourceFilter);
  }

  function handleSearchChange(e) {
    setMarketSearchTerm(e.target.value);
  }

  let filteredCards = marketCards.filter(card => card.rarity === marketSelectedRarity || marketSelectedRarity === 'all').filter(card => card.character.first_name.toLowerCase().includes(marketSearchTerm.toLowerCase()) || card.character.last_name.toLowerCase().includes(marketSearchTerm.toLowerCase()) || marketSearchTerm.toLowerCase().includes(card.character.first_name.toLowerCase()) || marketSearchTerm.toLowerCase().includes(card.character.last_name.toLowerCase()) || marketSearchTerm === '').filter(card => card.user.id === user.id || sourceFilter === false)

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])

  function handleClickCard() {
    setShowModal(true);
  }

  function displayCards(data) {
    return data.map(card => {
        let userOwned = card.user.id === user.id
      return (
        <MarketCard key={card.id} user={user} card={card} userOwned={userOwned} setListedByUser={setListedByUser} setShowModal={setShowModal} setSelectedCard={setSelectedCard} setNumCardOwners={setNumCardOwners} setNumOtherCards={setNumOtherCards} setAllCardTransactions={setAllCardTransactions} setActiveListings={setActiveListings} setSelectedTab={setSelectedTab}/>
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
          <div className="log-in-title" >
            <h3>Back</h3>
          </div>
        </div>
      </div>
      {selectedCard != {} ? <MarketInformation
        selectedCard={selectedCard}
        setSelectedCard={setSelectedCard}
        showModal={showModal}
        setShowModal={setShowModal}
        user={user}
        setUser={setUser}
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
        listedByUser={listedByUser}
        setListedByUser={setListedByUser}
      /> : null}

    </React.Fragment>


  )
}