import React, { useEffect, useState } from 'react';
import './CardInformation.css';
import { useNavigate } from 'react-router-dom';
import icon from '../../../../img/clearpocketpros.png';

import Graph from './Graph/Graph';


export default function CardInformation({ selectedCard, showModal, setShowModal, users, numCardOwners, numOthercards, allCardTransactions, selectedTab, setSelectedTab }) {
    let navigate = useNavigate();
    const charImages = require.context('../../../../img/characters', true);

    if (selectedCard === {}) {
        return null
    }

    if (!showModal) {
        return null
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

    const data = {
        labels,
        datasets: [
            {
                label: 'Sale Price',
                data: priceLabels,
                borderColor: 'rgb(56, 56, 56)',
                backgroundColor: 'whitesmoke',
            }
        ],

    };





    let cardTransactions = selectedCard.transactions;
    let transactionsToDisplay = cardTransactions.slice(1,).map(tx => {
        let date = tx.created_at.slice(0, 10)
        let year = date.slice(0, 4)
        let month = date.slice(5, 7);
        let day = date.slice(8, 10)
        let toId = tx.to_id - 1
        let fromId = tx.from_id - 1
        let txRow = `> ${day}-${month}-${year} - From: ${users[toId].username} To: ${users[fromId].username} Price: 🪙 ${tx.sale_price}`
        return (<div className='transaction-row'>> <b>{day}-{month}-{year}</b> - From: <b>{users[toId].username}</b> - To: <b>{users[fromId].username}</b> - Price: <b>🪙 {tx.sale_price}</b></div>)
    })


    let date = cardTransactions != undefined ? cardTransactions[0].created_at.slice(0, 10) : ""
    let year = date.slice(0, 4)
    let month = date.slice(5, 7);
    let day = date.slice(8, 10)
    let toId = cardTransactions != undefined ? cardTransactions[0].to_id - 1 : ''
    let dateMsg = cardTransactions != undefined ? `> ${day}-${month}-${year}: Unpacked by ${users[toId].username}` : ''



    function handleClickCard() {
        setShowModal(false)
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

    let avg = calculateAverage(allCardTransactions.map(tx => parseInt(tx.sale_price)));
    let averagePrice = allCardTransactions.length === 0 ? '' : Math.round(calculateAverage(allCardTransactions.map(tx => parseInt(tx.sale_price))))
    let priceMessage = allCardTransactions.length === 0 ? '(No Transactions Found)' : '- Average Sale Price'

    let tabs = ['SALE PRICE', 'TRANSACTION HISTORY', 'ACTIVE LISTINGS']
    let tabsToDisplay = tabs.map(tab => {
        let tabClassName = selectedTab === tab ? 'history-tab selected' : 'history-tab'
        return (
            <div key={tab} className={tabClassName} onClick={handleClickTab}>{tab}</div>
        )
    })

    function handleClickTab(e) {
        setSelectedTab(e.target.textContent)
    }

    let displayItem;
    if (selectedTab === 'SALE PRICE') {
        displayItem = () => {
            return (
                <div className='tx-graph'>
                    <Graph options={options} data={data} />
                </div>
            )
        }
    } else if (selectedTab === 'TRANSACTION HISTORY') {
        displayItem = () => {
            return (
                <React.Fragment>
                    <div className='transaction-row'>> <b>{day}-{month}-{year}</b> - Unpacked by: <b>{users[toId].username}</b></div>
                    {transactionsToDisplay}
                </React.Fragment>
            )
        }
    } else if (selectedTab === 'ACTIVE LISTINGS') {
        displayItem = () => { return (null) }
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
                        <div className='history-title'>{selectedCard.rarity} {selectedCard.character.first_name} {selectedCard.character.last_name}</div>
                        <div className='history-summary'>
                            <div className='totalcardscount'>🟥 <b>{numOthercards}</b> Total</div>
                            <div className='ownerscount'>👤 <b>{numCardOwners}</b> Owners</div>
                            <div className='avgsaleprice'>🪙 <b>{averagePrice}</b> {priceMessage}</div>
                        </div>
                        <div className='history-title'> </div>
                        <div className='history-list'>
                            {displayItem()}
                        </div>
                        <div className='history-tabs-container'>
                            {tabsToDisplay}
                        </div>


                    </div>
                </div>
            </div>

        </React.Fragment>
    );
}
