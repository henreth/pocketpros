import './YourCards.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'
import MarketInformation from '../../Marketplace/MarketInformation/MarketInformation';


export default function YourCards({ user, setUser, userCards, setUserCards, marketCards, setMarketCards, handleBackClick, signedIn, users, setMarketSearchTerm, setMarketSelectedRarity }) {
  document.title = 'Pocket Pros - Your Cards';
  let [showModal, setShowModal] = useState(false);
  let [selectedCard, setSelectedCard] = useState(userCards[0])
  let [selectedRarity, setSelectedRarity] = useState('all')
  let [searchTerm, setSearchTerm] = useState('');
  let [sortTerm,setSortTerm] = useState('A-Z')

  //  * for additional information 
  let [numCardOwners, setNumCardOwners] = useState(0)
  let [numOthercards, setNumOtherCards] = useState(0)
  let [allCardTransactions, setAllCardTransactions] = useState([])
  let [activeListings, setActiveListings] = useState([])
  let [selectedTab, setSelectedTab] = useState('SALE PRICE')
  let [listedByUser, setListedByUser] = useState(false)


  function handleSearchChange(e) {
    setSearchTerm(e.target.value);
  }

  let uniqueCards = [];
  userCards.forEach(card => {
    let details = card.character.id + '-' + card.rarity
    if (!uniqueCards.includes(details)) { uniqueCards.push(details) }
  })


  let filteredCards = userCards.filter(card => card.rarity === selectedRarity || selectedRarity === 'all')
  .filter(card => card.character.first_name.toLowerCase().includes(searchTerm.toLowerCase()) || card.character.last_name.toLowerCase().includes(searchTerm.toLowerCase()) || searchTerm.toLowerCase().includes(card.character.first_name.toLowerCase()) || searchTerm.toLowerCase().includes(card.character.last_name.toLowerCase()) || searchTerm === '')
  .sort((card1, card2) => { 
    if (sortTerm==='1'){
      return card1.character.first_name.localeCompare(card2.character.first_name) 
    } else if (sortTerm==='2'){
      return card2.character.first_name.localeCompare(card1.character.first_name) 
    }
  })

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])



  function displayCards(data) {
    return data.map(card => {
      let userOwned = card.user.id === user.id
      return (
        <Card key={card.id} card={card} setShowModal={setShowModal} setSelectedCard={setSelectedCard} userOwned={userOwned} setListedByUser={setListedByUser} setNumCardOwners={setNumCardOwners} setNumOtherCards={setNumOtherCards} setAllCardTransactions={setAllCardTransactions} setActiveListings={setActiveListings} setSelectedTab={setSelectedTab} />
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

  function handleSortChange(e){
    setSortTerm(e.target.value)
  }



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
          <div class="list-choice">
            <div class="list-choice-title">Sort</div>
            <div class="list-choice-objects" onChange={handleSortChange}>
              <label>
                <input type="radio" value={'1'} />
                <span>A-Z</span>
              </label>
              <label>
                <input type="radio" value={'2'} />
                <span>Z-A</span>
              </label>
              <label>
                <input type="radio" value={'3'} />                         
                <span>Price ↑</span>
              </label>
              <label>
                <input type="radio" value={'4'} />                         
                <span>Price ↓</span>
              </label>
              <label>
                <input type="radio" value={'5'} />                         
                <span>List Date ↑</span>
              </label>
              <label>
                <input type="radio" value={'6'} />                         
                <span>List Date ↓</span>
              </label>



            </div>
          </div>
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