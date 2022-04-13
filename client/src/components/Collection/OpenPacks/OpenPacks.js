import './OpenPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Modal from "./Modal/Modal";

import Pack from './PackToOpen/PackToOpen';
import buyIcon from './PackToOpen/img/bwbuyicon.png'


export default function OpenPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn, handleBackClick }) {
    document.title = 'Pocket Pros - Open Packs';
    const packLogos = require.context('../../../img/pack_logos', true);


    const [openedCards, setOpenedCards] = useState([]);
    const [showModal, setShowModal] = useState(false);

    let packTypes = ["booster", "regular", "pro", "max", "ultra", "studio"]
    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
            navigate('/');
        }
    }, [])

    let packsToDisplay = packTypes.map(packType => {
        return (
            userPacks[packType] == 0 ? null : <Pack packType={packType} user={user} setUser={setUser} setUserCards={setUserCards} signedIn={signedIn} userPacks={userPacks} setUserPacks={setUserPacks} setOpenedCards={setOpenedCards} setShowModal={setShowModal} />
        )
    })

    function handleBuyPackClick() {
        navigate('/buypacks')
    }

    function buyMorePack(){
        return (
            <div className='pack buy-more' onClick={handleBuyPackClick}>
            <img className='pack-logo' />
            <div className='pack-info-container'>

                <div className='pack-title top inverse'>POCKET PROGRAMMERS</div>

                <div className='buy-more-text inverse' >BUY MORE</div>
                <div className={'pack-count buy-more-text'}>+</div>

                <div className='buy-more-text'>BUY MORE</div>

                <div className='pack-title bottom' >POCKET PROGRAMMERS</div>

            </div>

        </div>
        )
    }

    return (
        <React.Fragment>

            <div className='yourPacks-container'>
                {packsToDisplay}
                {buyMorePack()}
            </div>
            <div className="back_button" onClick={() => navigate('/collection')}>
                <div className></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
            <Modal showModal={showModal} setShowModal={setShowModal} openedCards={openedCards} />
        </React.Fragment>


    )
}