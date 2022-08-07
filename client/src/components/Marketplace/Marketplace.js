import React, { useState, useEffect } from 'react';
import { useNavigate } from "react-router-dom";
import MarketCard from './MarketCard/MarketCard';
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

  let [listedByUser, setListedByUser] = useState(false)

  let [sortTerm, setSortTerm] = useState('A-Z')


  let [sourceFilter, setSourceFilter] = useState(false)

  let sourceClass = sourceFilter ? 'yourCards-source-tab source-selected' : 'yourCards-source-tab'

  function handleClickSource() {
    setSourceFilter(!sourceFilter);
  }

  function handleSearchChange(e) {
    setMarketSearchTerm(e.target.value);
  }

  let filteredCards = marketCards.filter(card => card.rarity === marketSelectedRarity | marketSelectedRarity === 'all')
    .filter(card => card.character.first_name.toLowerCase().includes(marketSearchTerm.toLowerCase()) || card.character.last_name.toLowerCase().includes(marketSearchTerm.toLowerCase()) || marketSearchTerm.toLowerCase().includes(card.character.first_name.toLowerCase()) || marketSearchTerm.toLowerCase().includes(card.character.last_name.toLowerCase()) || marketSearchTerm === '')
    .filter(card => card.user.id === user.id || sourceFilter === false)
    .sort((card1, card2) => {
      if (sortTerm === '1') {
        return card1.character.first_name.localeCompare(card2.character.first_name)
      } else if (sortTerm === '2') {
        return card2.character.first_name.localeCompare(card1.character.first_name)
      } else if (sortTerm === '3') {
        return card1.sale_price - card2.sale_price
      } else if (sortTerm === '4') {
        return card2.sale_price - card1.sale_price
      } else if (sortTerm === '5') {
        return card1.updated_at.localeCompare(card2.updated_at)
      } else if (sortTerm === '6') {
        return card2.updated_at.localeCompare(card1.updated_at)
      }
    })

  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn == false) {
      navigate('/');
    }
  }, [])


  function handleSortChange(e) {
    setSortTerm(e.target.value)
  }

  function displayCards(data) {
    return data.map(card => {
      let userOwned = card.user.id === user.id
      return (
        <MarketCard key={card.id} user={user} card={card} userOwned={userOwned} setListedByUser={setListedByUser} setShowModal={setShowModal} setSelectedCard={setSelectedCard} setNumCardOwners={setNumCardOwners} setNumOtherCards={setNumOtherCards} setAllCardTransactions={setAllCardTransactions} setActiveListings={setActiveListings} setSelectedTab={setSelectedTab} />
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

  const sortTitleClass = sortTerm !== '' ? "sort-choice-title sort-active" : "sort-choice-title"

  const sortDefault = sortTerm === '' ? null : <label>
    <input type="radio" name='month' value='' />
    <span className='reset-sort'>Reset</span>
  </label>;

  const displaySelectedCard = selectedCard != {} ? <MarketInformation
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
    setListedByUser={setListedByUser} /> : null;

  return (
    <React.Fragment>
      <div className='displayCards-page'>
        <div className='yourCards-overlay'></div>
        <div className='yourCards-source-container'>
          <div className={sourceClass} onClick={handleClickSource}>{sourceFilter ? 'Your Listed Cards' : 'Market Cards'}</div>
        </div>
        <div className='count-container'>
          <div className='yourCards-Cards-Count'>Total:<b>{filteredCards.length}</b></div>
        </div>
        <div className='yourCards-filter-container'>
          {raritiesToDisplay}
          <div className="sort-choice">
            <div className={sortTitleClass} >Sort</div>
            <div className="sort-choice-objects" onChange={handleSortChange}>
              {sortDefault}
              <label>
                <input type="radio" name='month' value='1' />
                <span>A-Z</span>
              </label>
              <label>
                <input type="radio" name='month' value='2' />
                <span>Z-A</span>
              </label>
              <label>
                <input type="radio" name='month' value='3' />
                <span>Price ↑</span>
              </label>
              <label>
                <input type="radio" name='month' value='4' />
                <span>Price ↓</span>
              </label>
              <label>
                <input type="radio" name='month' value='5' />
                <span>List Date ↑</span>
              </label>
              <label>
                <input type="radio" name='month' value='6' />
                <span>List Date ↓</span>
              </label>
            </div>
          </div>
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
      {displaySelectedCard}

    </React.Fragment>


  )
}