import './BuyPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from './../Card/Card'

import Pack from './PackToBuy/PackToBuy';
import buyIcon from './PackToBuy/img/bwbuyicon.png'


export default function BuyPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn }) {
    document.title = 'Pocket Pros - Open Packs';

    let packTypes = ["regular", "pro", "max", "ultra", "studio"]
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
        </div>
    )
}