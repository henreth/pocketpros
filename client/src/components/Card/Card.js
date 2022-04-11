import './Card.css';
import React, { useState } from 'react';
import hedy from '../../img/characters/hedylamarr.jpeg'
import zuckerberg from '../../img/characters/markzuckerberg.jpeg'


export default function Card({ char }) {

    let cardClass = `charCard-yc ${char.rarity}`

    return (
        <div className={cardClass}>
            <div className='charCard-yc-info-container'>
                <div className='charCard-id'>#{char.id}</div>
                <img src={zuckerberg} className='charCard-image'/>
                {/* <div>{char.rarity.toUpperCase()}</div> */}
                <div>{char.character.first_name} {char.character.last_name}</div>
            </div>
        </div>
    )
}