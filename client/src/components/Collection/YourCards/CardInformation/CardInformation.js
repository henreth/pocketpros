import React from 'react';
import './CardInformation.css';
import { useNavigate } from 'react-router-dom';
import icon from '../../../../img/clearpocketpros.png';


export default function CardInformation({ selectedCard, showModal, setShowModal }) {
    const charImages = require.context('../../../../img/characters', true);

    let navigate = useNavigate();

    if (!showModal) {
        return null
    }

    function handleClick() {
        setShowModal(false)
    }


    let cardClass = `charCard ${selectedCard.rarity} selectedCard`

    return (
        <React.Fragment>
            <div className="overlay" onBlur={handleClick}>
                <button className='button openPacks' onClick={handleClick}>cancel</button>
                <div className='cardInformation-container'>
                    <div className={cardClass}>
                        <div className='charCard-info-container' >
                            <img src={charImages('./' + selectedCard.character.image_url)} className='charCard-image' />
                            <div className='charCard-text'>
                                <div className='charCard-rarity'>{selectedCard.rarity}</div>
                                <div className='charCard-name'><b>{selectedCard.character.first_name} {selectedCard.character.last_name}</b></div>
                                <div className='charCard-id'> {selectedCard.unique_id}</div>
                            </div>
                        </div>
                        <img className='floppy-icon' src={icon} />
                    </div>
                    <div className='market-information-container'></div>

                </div>
            </div>

        </React.Fragment>
    );
}
