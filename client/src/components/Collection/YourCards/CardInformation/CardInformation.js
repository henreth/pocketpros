import React,{useEffect, useState} from 'react';
import './CardInformation.css';
import { useNavigate } from 'react-router-dom';
import icon from '../../../../img/clearpocketpros.png';
import axios from 'axios';

import Graph from './Graph/Graph';


export default function CardInformation({ selectedCard, showModal, setShowModal,users }) {
    let navigate = useNavigate();
    const charImages = require.context('../../../../img/characters', true);
    let [numCardOwners,setNumCardOwners] =useState(0)
    let [numOthercards,setNumOtherCards] =useState(0)
    let [allCardTransactions,setAllCardTransactions] = useState([])
    let charId = selectedCard==undefined?1:selectedCard.character.id
    let cardRarity = selectedCard==undefined?'gold':selectedCard.rarity
    let cardDetails = {
        "char_id": charId,
        "rarity": cardRarity
    }

    useEffect(()=>{
        axios.post('/findcardowners',cardDetails)
        .then(r=>{setNumOtherCards(r.data.length)})

        axios.post('/findcardsstrict',cardDetails)
        .then(r=>{setNumOtherCards(r.data.length)})


        axios.post('/findtransactions', cardDetails)
        .then(r=>{setAllCardTransactions(r.data)})
    },selectedCard)

    if (selectedCard==={}){
        return null
    }

    if (!showModal) {
        return null
    }




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
                    <div className='history-title'>🟥 {numOthercards}  TOTAL  👤 {numCardOwners} Owners </div>
                    <div className='history-title'>Average Sale Price: 🪙 {averagePrice} </div>
                    <div className='history-list'>
                        <div>{dateMsg}</div>
                    </div>
                    <div div='sale-status'>
                    <div>Status: {selectedCard.for_sale?'For Sale': 'Not For Sale'}</div>
                    <div>{selectedCard.for_sale?`Price: 🪙 ${selectedCard.sale_price}`:null}</div>
                    </div>

                    </div>
                </div>
            </div>

        </React.Fragment>
    );
}
