import React, { useState } from 'react';
import QrCode from '../../../Card/QRCode/QRCode';
import Tilt from 'react-tilt'



export default function NewCard({ card }) {
    const charImages = require.context('../../../../img/characters', true);
    let [opened, setOpened] = useState(false)

    function handleClickCard() {
        setOpened(true)
    }
    let rarity = card.rarity

    let cardClass = opened ? `charCard ${rarity} new` : 'charCard unopened new'

    return (
        <Tilt className="Tilt" options={{ max: 50, scale: 1 }} >
            <div className={cardClass} onClick={handleClickCard}>
                <div className='charCard-info-container'>
                    <img src={charImages('./' + card.character.image[card.variant])} className='charCard-image' />
                    <div className='charCard-text'>
                        <div className='charCard-rarity'>{card.character.title[card.variant]}</div>
                        <div className='charCard-name'><b>{card.character.first_name} {card.character.last_name}</b></div>
                        <div className='charCard-id'>{card.unique_id}</div>
                    </div>
                </div>
                <div className='qrcode'>
                    <QrCode url={card.character.link} />
                </div>
            </div>
        </Tilt>
    )
}