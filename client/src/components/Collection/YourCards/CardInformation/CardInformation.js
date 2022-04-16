import React from 'react';
import './CardInformation.css';
import { useNavigate } from 'react-router-dom';
import icon from '../../../../img/clearpocketpros.png';


export default function CardInformation({ selectedCard, showModal, setShowModal,users }) {
    console.log(selectedCard)
    const charImages = require.context('../../../../img/characters', true);

    let cardTransactions = selectedCard.transactions;

    let date = cardTransactions!=undefined?cardTransactions[0].created_at.slice(0, 10):""
    let year = date.slice(0, 4)
    let month = date.slice(5, 7);
    let day = date.slice(8, 10)
    let toId = cardTransactions!=undefined?cardTransactions[0].to_id-1:''
    let dateMsg = cardTransactions!=undefined?`> ${day}-${month}-${year}: Unpacked by ${users[toId].username}`:''



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
                    <div className='market-information-container'>
                    <div className='history-title'>History</div>
                    <div> # of Transactions: {cardTransactions.length-1}</div>
                    <div className='history-list'>
                        <div>{dateMsg}</div>
                    </div>
                    <div div='sale-status'>
                    <div>Status: {selectedCard.for_sale?'For Sale': 'Not For Sale'}</div>
                    <div>{selectedCard.for_sale?`Price: 🪙 ${selectedCard.sale_price}`:null}</div>
                    </div>

                    </div>
                </div>
            </div>

        </React.Fragment>
    );
}
