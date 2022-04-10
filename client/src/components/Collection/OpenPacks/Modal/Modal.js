import React from 'react';
import './Modal.css';
import NewCard from '../NewCard/NewCard';
import { useNavigate } from 'react-router-dom';



// ! Add 'GO TO YOUR DECK' 'OPEN MORE PACKS" Buttons
function Modal({ showModal, setShowModal, openedCards }) {
    let navigate = useNavigate();

    if (!showModal) {
        return null
    }

    function handleGoToDeckClick() {
        setShowModal(false)
        navigate('/cards')
    }

    function handleClick() {
        setShowModal(false)
    }

    let openedCardsToDisplay = openedCards.map(card => {
        return (
            <NewCard key={card.id} char={card} />
        )
    })

    return (
        <div className="overlay" onBlur={handleClick}>
            <div className='openedCards-container' >
                {openedCardsToDisplay}
            </div>
            <div className='button-wrapper'>
                <button onClick={handleGoToDeckClick}>GO TO YOUR DECK</button>
                <button onClick={handleClick}>OPEN MORE PACKS</button>
            </div>

        </div>
    );
}

export default Modal;