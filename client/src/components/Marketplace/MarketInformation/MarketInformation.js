import React, { useEffect, useState } from 'react';
import './MarketInformation.scss'
import { useNavigate } from 'react-router-dom';
import icon from '../../../img/clearpocketpros.png';

import Graph from './Graph/Graph';
import axios from 'axios';


export default function MarketInformation({ selectedCard, setSelectedCard, showModal, setShowModal, user, setUser, users, userCards, setUserCards, marketCards, setMarketCards, numCardOwners, numOthercards, allCardTransactions, activeListings, selectedTab, setSelectedTab, setMarketSearchTerm, setMarketSelectedRarity, listedByUser, setListedByUser }) {
    let navigate = useNavigate();
    const charImages = require.context('../../../img/characters', true);
    let [clickedList, setClickedList] = useState(false);
    let [clickedUnlist, setClickedUnlist] = useState(false);
    let [clickedBuy, setClickedBuy] = useState(false)
    let [listingPrice, setListingPrice] = useState('');

    if (selectedCard === {}) {
        return null
    }

    if (!showModal) {
        return null
    }

    function capitalize(word) {
        return word[0].toUpperCase() + word.slice(1,)
    }

    let labels = allCardTransactions.map(tx => {
        let date = tx.created_at.slice(0, 10)
        let year = date.slice(0, 4)
        let month = date.slice(5, 7);
        let day = date.slice(8, 10)
        let dateMsg = `${day}-${month}-${year}`
        return dateMsg
    })

    let priceLabels = allCardTransactions.map(tx => tx.sale_price)

    const options = {
        responsive: true,
    };

    let bronzeBorder = '#cd7f32'
    let silverBorder = 'rgb(175, 174, 171)'
    let goldBorder = 'rgb(214, 172, 110)'
    let holoBorder = 'rgb(194, 255, 182)'

    let bronzeBackground = '#8c5620'
    let silverBackground = 'rgb(96, 95, 93)'
    let goldBackground = 'rgb(134, 108, 69)'
    let holoBackground = 'rgb(221, 169, 255)'

    let graphBorderColor;
    let graphBackgroundColor;

    switch (selectedCard.rarity) {
        case 'bronze':
            graphBorderColor = bronzeBorder
            graphBackgroundColor = bronzeBackground
            break
        case 'silver':
            graphBorderColor = silverBorder
            graphBackgroundColor = silverBackground
            break
        case 'gold':
            graphBorderColor = goldBorder
            graphBackgroundColor = goldBackground
            break
        case 'holo':
            graphBorderColor = holoBorder
            graphBackgroundColor = holoBackground
            break
    }

    const data = {
        labels,
        datasets: [
            {
                label: 'SALE PRICE',
                data: priceLabels,
                borderColor: 'rgb(56, 56, 56)',
                // backgroundColor: 'whitesmoke',
                backgroundColor: graphBorderColor,
                // borderColor: graphBackgroundColor,
                // backgroundColor: graphBorderColor,
            }
        ],

    };

    function handleClickCard() {
        setShowModal(false)
        setClickedList(false)
        setListingPrice('')
    }

    function calculateAverage(array) {
        let total = 0;
        let count = 0;
        array.forEach(function (item, index) {
            total += item;
            count++;
        });
        return total / count;
    }

    let cardClass = `charCard ${selectedCard.rarity} selectedCard`

    let averagePrice = allCardTransactions.length === 0 ? '' : Math.round(calculateAverage(allCardTransactions.map(tx => parseInt(tx.sale_price))))
    let priceMessage = allCardTransactions.length === 0 ? '(No Transactions Found)' : '- Average Sale Price'

    let tabs = ['SALE PRICE', 'RECENT TRANSACTIONS', 'ACTIVE LISTINGS', 'THIS CARD\'S HISTORY']
    let tabsToDisplay = tabs.map(tab => {
        let tabClassName = selectedTab === tab ? 'history-tab selected' : 'history-tab'
        return (
            <div key={tab} className={tabClassName} onClick={handleClickTab}>{tab}</div>
        )
    })

    function handleClickTab(e) {
        setSelectedTab(e.target.textContent)
    }

    let cardTransactions = selectedCard.transactions;
    let date = typeof cardTransactions != 'undefined' ? cardTransactions[0].created_at.slice(0, 10) : ""
    let year = date.slice(0, 4)
    let month = date.slice(5, 7);
    let day = date.slice(8, 10)
    let toId = typeof cardTransactions != 'undefined' ? cardTransactions[0].to_id : ""
    let toUsername = typeof cardTransactions != 'undefined' ? users.filter(user => user.id == toId)[0].username : ""

    let transactionsToDisplay = cardTransactions.filter(tx => tx.from_id != null).map(tx => {
        let date = tx.created_at.slice(0, 10)
        let year = date.slice(0, 4)
        let month = date.slice(5, 7);
        let day = date.slice(8, 10)
        let toId = tx.to_id
        let toUsername = users.filter(user => user.id === toId)[0].username
        let fromId = tx.from_id
        let fromUsername = users.filter(user => user.id === fromId)[0].username
        return (<div key={'tx-' + tx.id} className='transaction-row'>> <b>{day}-{month}-{year}</b> - From: <b>{fromUsername}</b> - To: <b>{toUsername}</b> - <b>🪙 {tx.sale_price}</b></div>)
    })

    let listingsToDisplay = activeListings.map(card => {
        let date = card.updated_at.slice(0, 10)
        let year = date.slice(0, 4)
        let month = date.slice(5, 7);
        let day = date.slice(8, 10)

        return (<div key={'listing-' + card.id} className='transaction-row'>> <b>{day}-{month}-{year}</b> - Seller: <b>{card.user.username}</b> - 🪙 <b>{card.sale_price}</b> </div>)
    })


    let allTransactionsToDisplay = allCardTransactions.filter(tx => tx.from_id != null).map(tx => {
        let date = tx.created_at.slice(0, 10)
        let year = date.slice(0, 4)
        let month = date.slice(5, 7);
        let day = date.slice(8, 10)
        let toId = tx.to_id
        let toUsername = users.filter(user => user.id === toId)[0].username
        let fromId = tx.from_id
        let fromUsername = users.filter(user => user.id === fromId)[0].username
        return (<div key={'atx-' + tx.id} className='transaction-row'>> <b>{day}-{month}-{year}</b> - From: <b>{fromUsername}</b> - To: <b>{toUsername}</b> - <b>🪙 {tx.sale_price}</b></div>)
    })

    let noResultsFound = () => {
        return (
            <div className='transaction-row'>> <b>NO RESULTS FOUND</b></div>
        )
    }

    let displayItem;
    if (selectedTab === 'SALE PRICE') {
        displayItem = () => {
            return (
                <Graph options={options} data={data} />
            )
        }
    } else if (selectedTab === 'THIS CARD\'S HISTORY') {
        displayItem = () => {
            return (
                <React.Fragment>
                    <div className='transaction-row start'>> <b>{day}-{month}-{year}</b> - Unpacked by: <b>{toUsername}</b></div>
                    {cardTransactions.length != 0 ? transactionsToDisplay : noResultsFound()}
                </React.Fragment>
            )
        }
    } else if (selectedTab === 'ACTIVE LISTINGS') {
        displayItem = () => {
            return (
                <React.Fragment>
                    {activeListings.length != 0 ? listingsToDisplay : noResultsFound()}
                </React.Fragment>
            )
        }
    } else if (selectedTab === 'RECENT TRANSACTIONS') {
        displayItem = () => {
            return (
                <React.Fragment>
                    {allCardTransactions.length != 0 ? allTransactionsToDisplay : noResultsFound()}
                </React.Fragment>
            )
        }
    }

    function handleClickListForSale() {
        setClickedList(!clickedList)
    }

    function handleClickTakeOffMarket() {
        setClickedUnlist(!clickedUnlist)
    }

    function handleChangeListingPrice(e) {
        setListingPrice(parseInt(Math.round(e.target.value)))
    }

    function handleClickConfirmList() {
        if (listingPrice === '' || listingPrice === 0) {
            alert('You must enter a listing price before submitting!')
        } else {
            let details = {
                'id': selectedCard.id,
                'sale_price': listingPrice
            }
            axios.post('/listcard', details)
                .then(r => {
                    alert('Your ' + capitalize(selectedCard.rarity) + ' ' + selectedCard.character.first_name + ' ' + selectedCard.character.last_name + ' has been listed for 🪙' + listingPrice + '.')
                    setSelectedCard(r.data)
                    setClickedList(false)
                    setListingPrice('')
                    let filteredCards = userCards.filter(card => card.id != selectedCard.id)
                    let updatedCards = [...filteredCards, r.data]
                    setUserCards(updatedCards)
                    let filteredMarketCards = marketCards.filter(card => card.id != selectedCard.id)
                    let updatedMarketCards = [...filteredMarketCards, r.data]
                    setMarketCards(updatedMarketCards)
                })
        }

    }

    function handleClickConfirmUnlist() {
        let details = {
            'id': selectedCard.id,
        }
        axios.post('/unlistcard', details)
            .then(r => {
                alert('Your ' + capitalize(selectedCard.rarity) + ' ' + selectedCard.character.first_name + ' ' + selectedCard.character.last_name + 'has been taken off the market.')
                setSelectedCard(r.data)
                setClickedUnlist(false)
                setListingPrice('')
                let filteredCards = userCards.filter(card => card.id != selectedCard.id)
                let updatedCards = [...filteredCards, r.data]
                setUserCards(updatedCards)
                let filteredMarketCards = marketCards.filter(card => card.id != selectedCard.id)
                setMarketCards(filteredMarketCards)
            })
    }

    function clickViewAll() {
        navigate('/marketplace')
        setMarketSearchTerm(`${selectedCard.character.first_name} ${selectedCard.character.last_name}`)
        setMarketSelectedRarity(selectedCard.rarity)
    }

    function handleClickBuyCard() {
        if (user.credits >= selectedCard.sale_price) {
            setClickedBuy(!clickedBuy)
        } else {
            alert('You need atleast ' + selectedCard.sale_price + " credits to buy this card.")
        }

    }

    function handleClickConfirmBuy() {
        let details = {
            'card_id': selectedCard.id,
        }
        axios.post('/buycard', details)
            .then(r => {
                alert('You have purchased a ' + capitalize(selectedCard.rarity) + ' ' + selectedCard.character.first_name + ' ' + selectedCard.character.last_name + ' for 🪙' + selectedCard.sale_price + '.')
                setSelectedCard(r.data)
                setClickedBuy(false)
                setListedByUser(true)

                let filteredCards = userCards.filter(card => card.id != selectedCard.id)
                let updatedCards = [...filteredCards, r.data]
                setUserCards(updatedCards)
                let filteredMarketCards = marketCards.filter(card => card.id != selectedCard.id)
                setMarketCards(filteredMarketCards)
                fetch("/me")
                    .then((r) => {
                        if (r.ok) {
                            r.json().then((user) => {
                                setUser(user)
                            })
                        }
                    })
            })

    }

    return (
        <React.Fragment>
            <div className="overlay" >
                <div className='cardInformation-container'>
                    <div className={cardClass}>
                        <div className='charCard-info-container' onClick={handleClickCard} >
                            <img src={charImages('./' + selectedCard.character.image_url)} className='charCard-image' />
                            <div className='charCard-text'>
                                <div className='charCard-rarity'>{selectedCard.rarity}</div>
                                <div className='charCard-name'><b>{selectedCard.character.first_name} {selectedCard.character.last_name}</b></div>
                                <div className='charCard-id'> {selectedCard.unique_id}</div>
                            </div>
                        </div>
                        <img className='floppy-icon' src={icon} />
                    </div>

                    <div className='market-information-container'>
                        <div className='history-title'><b>{selectedCard.character.first_name} {selectedCard.character.last_name}</b> ({selectedCard.rarity})</div>
                        <div className='history-summary'>
                            <div className='totalcardscount'>Owner: <b>{selectedCard.user.username}</b></div>
                            <div className='ownerscount'>Status: <b>{selectedCard.for_sale ? 'For Sale' : 'Not For Sale'}</b></div>
                            <div className='avgsaleprice'>{selectedCard.for_sale ? 'Cost: 🪙' : ''} <b>{selectedCard.for_sale ? selectedCard.sale_price : ''}</b></div>
                        </div>
                        <div className='history-summary'>
                            <div className='totalcardscount'>⧉ <b>{numOthercards}</b> Copies</div>
                            <div className='ownerscount'>👥 <b>{numCardOwners}</b> Owners</div>
                            <div className='avgsaleprice'>🪙 <b>{averagePrice}</b> {priceMessage}</div>
                        </div>
                        <div className='history-title'> </div>
                        <div className='history-list'>
                            {displayItem()}
                        </div>
                        <div className='history-tabs-container'>
                            {tabsToDisplay}
                        </div>
                        {listedByUser ? <div className='button-wrapper'>
                            {selectedCard.for_sale === true ? <React.Fragment>
                                {clickedUnlist ? <button className='cardInformation-button' onClick={handleClickTakeOffMarket}>Cancel</button> : <button className='cardInformation-button' onClick={handleClickTakeOffMarket}>Take Off Market</button>}
                                {clickedUnlist ? <button className='cardInformation-button'>Are You Sure?</button> : null}
                                {clickedUnlist ? <button className='cardInformation-button' onClick={handleClickConfirmUnlist}>Confirm</button> : <button className='cardInformation-button' onClick={clickViewAll}>View All</button>}
                            </React.Fragment> : <React.Fragment>
                                {clickedList ? <button className='cardInformation-button' onClick={handleClickListForSale}>Cancel</button> : <button className='cardInformation-button' onClick={handleClickListForSale}>List For Sale</button>}
                                {clickedList ? <input className='saleprice-input' type='number' value={listingPrice} onChange={handleChangeListingPrice} min='1' placeholder='Listing Price'></input> : null}
                                {clickedList ? <button className='cardInformation-button' onClick={handleClickConfirmList}>Confirm</button> : <button className='cardInformation-button' onClick={clickViewAll}>View All</button>}
                            </React.Fragment>}
                        </div> : <div className='button-wrapper'>
                            {clickedBuy ? <button className='cardInformation-button' onClick={handleClickBuyCard}>Cancel</button> : <button className='cardInformation-button' onClick={handleClickBuyCard}>Buy Card</button>}
                            {clickedBuy ? <button className='cardInformation-button'>Are You Sure?</button> : null}
                            {clickedBuy ? <button className='cardInformation-button' onClick={handleClickConfirmBuy}>Confirm</button> : <button className='cardInformation-button' onClick={clickViewAll}>View All</button>}
                        </div>}


                    </div>
                </div>
            </div>

        </React.Fragment>
    );
}
