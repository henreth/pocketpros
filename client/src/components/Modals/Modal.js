import React from 'react';
import './Modal.css';
import Card from '../Card/Card';
import NewCard from '../Collection/OpenPacks/NewCard/NewCard';



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
            <NewCard key={card.id} char={card} />
        )
    })

    return (
        <div className="overlay" onDrop={handleClick}>
                <div className='openedCards-container'>
                    {openedCardsToDisplay}
                </div>
        </div>
    );
}

export default Modal;