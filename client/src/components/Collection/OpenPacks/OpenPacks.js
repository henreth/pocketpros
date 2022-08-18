import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";
import Modal from "./Modal/Modal";

import Pack from '../../PackToOpen/PackToOpen';


export default function OpenPacks({ user, setUser, openedCards, setOpenedCards, showModal, setShowModal, handleBuyPackClick, handleOpenPackClick }) {
    document.title = 'Pocket Pros - Open Packs';

    let packTypes = ["booster", "regular", "pro", "max", "ultra", "studio"]
    let navigate = useNavigate();

    useEffect(() => {
        if (!user.username) {
            navigate('/');
        }
    }, [])

    let packsToDisplay = packTypes.map(packType => {
        if (user.packs) {
            return (
                user.packs[packType] == 0 ? null : <Pack key={packType} buying={false} packType={packType} user={user} handleOpenPackClick={handleOpenPackClick} handleBuyPackClick={handleBuyPackClick} />
            )
        } else{
            return null
        }
    })

    function handleBuyPackClick() {
        navigate('/buypacks')
    }

    function buyMorePack() {
        return (
            <div className='pack buy-more' onClick={handleBuyPackClick}>
                <img className='pack-logo' />
                <div className='pack-info-container'>
                    <div className='pack-title top inverse'>POCKET PROGRAMMERS</div>
                    <div className='buy-more-text inverse' >BUY MORE</div>
                    <div className={'pack-count buy-more-text'}>+</div>
                    <div className='buy-more-text lower'>BUY MORE</div>
                    <div className='pack-title bottom' >POCKET PROGRAMMERS</div>
                </div>
            </div>
        )
    }

    return (
        <React.Fragment>
            <div className='yourCards-overlay'></div>
            <div className='packs-container'>
                {packsToDisplay}
                {buyMorePack()}
            </div>
            <div className="back_button" onClick={() => navigate('/collection')}>
                <div></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
            <Modal showModal={showModal} setShowModal={setShowModal} openedCards={openedCards} />
        </React.Fragment>


    )
}