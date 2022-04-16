import './Card.css';
import React, { useState } from 'react';
import icon from '../../img/clearpocketpros.png';
import axios from 'axios';


export default function Card({ char, handleClickCard,setSelectedCard,setNumCardOwners, setNumOtherCards, setAllCardTransactions }) {
    const charImages = require.context('../../img/characters', true);

    let cardClass = `charCard ${char.rarity}`

    function handleClickChar(){
        setSelectedCard(char)
        let charId = char.character.id
        let cardRarity = char.rarity
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



        handleClickCard();
    }

    return (
        <div className={cardClass}>
            <div className='charCard-info-container' onClick={handleClickChar}>
                <img src={charImages('./'+char.character.image_url)} className='charCard-image' />
                <div className='charCard-text'>
                    <div className='charCard-rarity'>{char.rarity[0].toUpperCase() + char.rarity.slice(1,)}</div>
                    <div className='charCard-name'><b>{char.character.first_name} {char.character.last_name}</b></div>
                    <div className='charCard-id'> {char.unique_id}</div>
                </div>
            </div>
            <img className='floppy-icon' src={icon} />

        </div>
    )
}