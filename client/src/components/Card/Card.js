import './Card.css';
import React, { useState } from 'react';
import hedy from '../../img/characters/hedylamarr.jpeg'
import zuckerberg from '../../img/characters/markzuckerberg.jpeg'
import alanturing from '../../img/characters/alanturing.jpeg'
import stevejobs from '../../../../img/characters/stevejobs.jpeg'


export default function Card({ char }) {

    let cardClass = `charCard-yc ${char.rarity}`

    return (
        <div className={cardClass}>
            <div className='charCard-yc-info-container'>
                <img src={stevejobs} className='charCard-image' />
                <div className='charCard-text'>
                    <div className='charCard-name'>{char.character.first_name} {char.character.last_name}</div>
                    <div className='charCard-rarity'>{char.rarity[0].toUpperCase()+char.rarity.slice(1,)}</div>
                    <div className='charCard-id'>Card #{char.id}</div>
                </div>
            </div>
        </div>
    )
}