import '../../Card/Card.css';
import React, { useState } from 'react';
import icon from '../../../img/clearpocketpros.png';
import axios from 'axios';
import QrCode from '../../Card/QRCode/QRCode';


export default function MarketCard({ user, card, setShowModal, userOwned, setListedByUser, setSelectedCard, setNumCardOwners, setNumOtherCards, setAllCardTransactions, setActiveListings, setSelectedTab }) {
    const charImages = require.context('../../../img/characters', true);

    let cardClass = `charCard ${card.rarity}`

    async function handleClickCard() {
        setSelectedCard(card)
        setSelectedTab('SALE PRICE')

        let charId = card.character.id
        let cardRarity = card.rarity
        let cardDetails = {
            "char_id": charId,
            "rarity": cardRarity
        }

        axios.post('/findcardowners', cardDetails)
            .then(r => { setNumCardOwners(r.data.length) })

        axios.post('/findcardsstrict', cardDetails)
            .then(r => { setNumOtherCards(r.data.length) })


        axios.post('/findtransactions', cardDetails)
            .then(r => { setAllCardTransactions(r.data) })

        axios.post('/findlistings', cardDetails)
            .then(r => { setActiveListings(r.data) })

        setListedByUser(userOwned)
        setShowModal(true);
    }

    let costClass = parseInt(user.credits) < parseInt(card.sale_price) ? 'card-cost locked' : 'card-cost';

    let date = card.updated_at.slice(0, 10)
    let year = date.slice(0, 4)
    let month = date.slice(5, 7);
    let day = date.slice(8, 10)
    let dateMsg = `${day}-${month}-${year}`


    return (
        <div className={cardClass}>
            <div className='listing-information'>
                <div className={costClass}>🪙 <b>{card.sale_price}</b></div>
                <div className='seller-name'>👤 <b>{card.user.username} - {dateMsg}</b></div>
            </div>
            <div className='charCard-info-container' onClick={handleClickCard}>
                <img src={charImages('./' + card.character.image_url)} className='charCard-image' />
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