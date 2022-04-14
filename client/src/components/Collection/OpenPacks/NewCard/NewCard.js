// import './NewCard.css';
import '../../../Card/Card.css'
import React, { useState } from 'react';
import hedy from '../../../../img/characters/hedylamarr.jpeg'
import zuckerberg from '../../../../img/characters/markzuckerberg.jpeg'
import alanturing from '../../../../img/characters/alanturing.jpeg'
import stevejobs from '../../../../img/characters/stevejobs.jpeg'
import icon from '../../../../img/cleargithubqr.png';

export default function NewCard({ char, setCardElements }) {
    const charImages = require.context('../../../../img/characters', true);


    let [opened, setOpened] = useState(false)

    function handleClickCard() {
        setOpened(true)
    }
    let rarity = char.rarity

    let cardClass = opened ? `charCard ${rarity}` : 'charCard unopened'

    return (
        <div className={cardClass} onClick={handleClickCard}>
            <div className='charCard-info-container'>
            <img src={charImages('./'+char.character.image_url)} className='charCard-image' />
                <div className='charCard-text'>
                    <div className='charCard-rarity'>{char.rarity[0].toUpperCase()+char.rarity.slice(1,)}</div>
                    <div className='charCard-name'><b>{char.character.first_name} {char.character.last_name}</b></div>
                    <div className='charCard-id'>#{char.unique_id}</div>
                </div>
            </div>
            <img className='floppy-icon' src={icon} />
        </div>
    )
}