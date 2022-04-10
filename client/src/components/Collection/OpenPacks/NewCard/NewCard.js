import './NewCard.css';
import React, { useState } from 'react';


export default function NewCard({ char, setCardElements }) {

    let [opened, setOpened] = useState(false)

    function handleClickCard() {
        alert('working')
        setOpened(true)
    }

    let cardClass = opened ? 'charCard' : 'charCard'

    return (
        <div className={cardClass} onClick={handleClickCard}>
            <div className='charCard-info-container'>
                <div>{char.rarity.toUpperCase()}</div>
                <div>{char.character.first_name} {char.character.last_name}</div>
            </div>
        </div>
    )
}