import './Card.css';
import React, { useState } from 'react';
import icon from '../../img/clearpocketpros.png';

export default function Card({ char }) {
    const charImages = require.context('../../img/characters', true);

    let cardClass = `charCard ${char.rarity}`

    return (
        <div className={cardClass}>
            <div className='charCard-info-container'>
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