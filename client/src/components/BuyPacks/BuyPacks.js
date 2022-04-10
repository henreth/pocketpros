import './BuyPacks.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';

import Card from './../Card/Card'

import Pack from './PackToBuy/PackToBuy';


export default function BuyPacks({ user, setUser, setUserCards, userPacks, setUserPacks, signedIn,handleBackClick }) {
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


    function handleClickBack(){
        navigate(-1)
    }
    return (
        <React.Fragment>
            <div className='yourPacks-container' >
                {packsToDisplay}
            </div>
            <div className="back_button" onClick={handleClickBack}>
                <div className></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
        </React.Fragment>

    )
}