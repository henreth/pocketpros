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

    // let openedCardsToDisplay = shuffle(openedCards).map(card => {
    let openedCardsToDisplay = openedCards.map(card => {
        return (
            <NewCard key={card.id} char={card} />
        )
    })

    function shuffle(array) {
        for (var i = array.length - 1; i > 0; i--) {
            var j = Math.floor(Math.random() * (i + 1));
            var temp = array[i];
            array[i] = array[j];
            array[j] = temp;
        }
    return array
    }

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