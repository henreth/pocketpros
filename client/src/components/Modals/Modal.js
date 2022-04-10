import React from 'react';
import './Modal.css';
import Card from '../Card/Card'


// open, onClose 
function Modal({ showModal, setShowModal, openedCards }) {

    if (!showModal) {
        return null
    }

    function handleClick() {
        setShowModal(false)
    }

    let openedCardsToDisplay = openedCards.map(card => {
        return (
            <Card key={card.id} char={card} />
        )
    })

    return (
        <div className="overlay">

                <div className='openedCards-container'>
                    {openedCardsToDisplay}
                </div>
                <button onClick={handleClick}> X </button>
        </div>
    );
}

export default Modal;