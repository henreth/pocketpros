import React,{useEffect, useState} from 'react';
import './CardInformation.css';
import { useNavigate } from 'react-router-dom';
import icon from '../../../../img/clearpocketpros.png';

import Graph from './Graph/Graph';


export default function CardInformation({ selectedCard, showModal, setShowModal,users, numCardOwners, numOthercards,allCardTransactions, selectedTab, setSelectedTab}) {
    let navigate = useNavigate();
    const charImages = require.context('../../../../img/characters', true);

    if (selectedCard==={}){
        return null
    }

    if (!showModal) {
        return null
    }

    let labels = allCardTransactions.map(tx=>{
        let date = tx.created_at.slice(0, 10)
        let year = date.slice(0, 4)
        let month = date.slice(5, 7);
        let day = date.slice(8, 10)
        let dateMsg = `${day}-${month}-${year}`
        return dateMsg
    })

    let priceLabels = allCardTransactions.map(tx=>tx.sale_price)

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

    let date = cardTransactions!=undefined?cardTransactions[0].created_at.slice(0, 10):""
    let year = date.slice(0, 4)
    let month = date.slice(5, 7);
    let day = date.slice(8, 10)
    let toId = cardTransactions!=undefined?cardTransactions[0].to_id-1:''
    let dateMsg = cardTransactions!=undefined?`> ${day}-${month}-${year}: Unpacked by ${users[toId].username}`:''



    function handleClick() {
        setShowModal(false)
    }

    function calculateAverage(array) {
        let total = 0;
        let count = 0;
    
        array.forEach(function(item, index) {
            total += item;
            count++;
        });
    
        return total / count;
    }


    let cardClass = `charCard ${selectedCard.rarity} selectedCard`

    let averagePrice = allCardTransactions.length===0?'0 (No Sales Found)':calculateAverage(allCardTransactions.map(tx=>parseInt(tx.sale_price)))

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

    return (
        <React.Fragment>
            <div className="overlay" onBlur={handleClick}>
                <button className='button openPacks' onClick={handleClick}>cancel</button>
                <div className='cardInformation-container'>
                    <div className={cardClass}>
                        <div className='charCard-info-container' >
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
                        <div className='avgsaleprice'>🪙 <b>{Math.round(averagePrice)}</b> Average Sale Price</div>
                    </div>
                    <div className='history-title'> </div>
                    <div className='history-list'>
                        <div className='tx-graph'>
                        <Graph options={options} data={data}/>
                        </div>

                        {/* <div>{dateMsg}</div> */}
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
