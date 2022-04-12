import './Card.css';
import React, { useState } from 'react';
import hedy from '../../img/characters/hedylamarr.jpeg'
import zuckerberg from '../../img/characters/markzuckerberg.jpeg'
import alanturing from '../../img/characters/alanturing.jpeg'
import stevejobs from '../../img/characters/stevejobs.jpeg'
import icon from '../../img/cleargithubqr.png';



export default function Card({ char }) {

    let cardClass = `charCard ${char.rarity}`

    return (
        <div className={cardClass}>
            <div className='charCard-info-container'>
                <img src={stevejobs} className='charCard-image' />
                <div className='charCard-text'>
                    <div className='charCard-rarity'>{char.rarity[0].toUpperCase() + char.rarity.slice(1,)}</div>
                    <div className='charCard-name'><b>{char.character.first_name} {char.character.last_name}</b></div>
                    <div className='charCard-id'> #{char.id}</div>
                </div>
            </div>
            <img className='floppy-icon' src={icon} />

        </div>
    )
}