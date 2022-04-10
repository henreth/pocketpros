import './OpenPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from '../../Card/Card'

import Pack from './PackToOpen/PackToOpen';


export default function OpenPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn }) {
    document.title = 'Pocket Pros - Open Packs';

    let packTypes = ["booster", "regular", "pro", "max", "ultra", "studio"]
    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
            navigate('/');
        }
    }, [])

    let packsToDisplay = packTypes.map(packType => {
        return (
            <Pack packType={packType} user={user} setUser={setUser} setUserCards={setUserCards} signedIn={signedIn} userPacks={userPacks} setUserPacks={setUserPacks} />
        )
    })

    function handleBuyPackClick(){
        navigate('/')
    }

    return (
        <div className='yourPacks-container'>
            {packsToDisplay}
            <div className='pack buy-more' onClick={handleBuyPackClick}>
                <div className='pack-info-container'>
                    <div>BUY MORE</div>
                    {/* <img className='floppy' src={icon} /> */}
                    <div>+</div>
                </div>

            </div>
        </div>
    )
}