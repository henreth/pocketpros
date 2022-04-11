import './Card.css';
import React, { useState } from 'react';


export default function Card({ char }) {

    let cardClass = `charCard-yc ${char.rarity}`

    return (
        <div className={cardClass}>
            <div className='charCard-info-container'>
                <div>{char.rarity.toUpperCase()}</div>
                <div>{char.character.first_name} {char.character.last_name}</div>
            </div>
        </div>
    )
}