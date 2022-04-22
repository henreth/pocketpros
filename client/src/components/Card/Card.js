import './Card.css';
import React, { useState } from 'react';
import icon from '../../img/clearpocketpros.png';
import axios from 'axios';
import QrCode from './QRCode/QRCode';


export default function Card({ card, setShowModal,setSelectedCard,setNumCardOwners, userOwned, setListedByUser, setNumOtherCards, setAllCardTransactions, setActiveListings, setSelectedTab }) {
    const charImages = require.context('../../img/characters', true);

    let cardClass = `charCard ${card.rarity}`

    async function handleClickCard(){
        setSelectedCard(card)
        setSelectedTab('SALE PRICE')

        let charId = card.character.id
        let cardRarity = card.rarity
        let cardDetails = {
            "char_id": charId,
            "rarity": cardRarity
        }
        
        axios.post('/findcardowners',cardDetails)
        .then(r=>{setNumCardOwners(r.data.length)})

        axios.post('/findcardsstrict',cardDetails)
        .then(r=>{setNumOtherCards(r.data.length)})


        axios.post('/findtransactions', cardDetails)
        .then(r=>{setAllCardTransactions(r.data)})

        axios.post('/findlistings', cardDetails)
        .then(r=>{setActiveListings(r.data)})

        setListedByUser(userOwned)
        setShowModal(true);
    }

    return (
        <div className={cardClass}>
            <div className='charCard-info-container' onClick={handleClickCard}>
                <img src={charImages('./'+card.character.image_url)} className='charCard-image' />
                <div className='charCard-text'>
                    <div className='charCard-rarity'>{card.rarity[0].toUpperCase() + card.rarity.slice(1,)}</div>
                    <div className='charCard-name'><b>{card.character.first_name} {card.character.last_name}</b></div>
                    <div className='charCard-id'> {card.unique_id}</div>
                </div>
            </div>
            <div className='qrcode'> 
                <QrCode url={card.character.link}/>
            </div>

        </div>
    )
}