import './OpenPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Modal from "./Modal/Modal";

import Pack from './PackToOpen/PackToOpen';
import buyIcon from './PackToOpen/img/bwbuyicon.png'


export default function OpenPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn, handleBackClick }) {
    document.title = 'Pocket Pros - Open Packs';

    const [openedCards,setOpenedCards] = useState([]);
    const [showModal,setShowModal] = useState(false);

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

    return (
        <React.Fragment>

            <div className='yourPacks-container'>
                {packsToDisplay}
                <div className='pack buy-more' onClick={handleBuyPackClick}>
                    <div className='pack-info-container'>
                        <img className='floppy' src={buyIcon} />
                        <div>BUY MORE</div>
                        <div>+</div>
                    </div>

                </div>
            </div>
            <div className="back_button" onClick={()=>navigate('/collection')}>
                <div className></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
            <Modal showModal={showModal} setShowModal={setShowModal} openedCards={openedCards}/>
        </React.Fragment>


    )
}