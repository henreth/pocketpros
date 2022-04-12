import './PackToOpen.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';
import icon from './img/bwfloppy.png'


export default function PackToOpen({packType, setUser, setUserCards, userPacks, setUserPacks, setOpenedCards,setShowModal }){
    
    function handlePackClick(e) {
        if(userPacks[packType] == 0){
            alert(`ERROR: You have no ${packType[0].toUpperCase()+packType.slice(1,packType.length)} Packs left!`)
        } else{
            axios.get(`/${packType}_pack`)
            .then(r => {
                    document.title = (`Opening ${packType} Pack`)
                    setOpenedCards(r.data)
                    setShowModal(true)
                    //update user information
                    fetch("/me")
                    .then((r) => {
                        if (r.ok) {
                            r.json().then((user) => {
                                setUser(user)
                                setUserCards(user.cards)
                                setUserPacks(user.packs)
                            })
                        }
                    })        
                }

            )
        }

    }

    let packClass = 'pack '+packType

    return(
        <div className={packClass} onClick={handlePackClick}>
        <div className='pack-info-container'>
            <img className='floppy' src={icon} />
            <div>{packType.toUpperCase()}</div>
            <div>{userPacks[packType]}</div>
        </div>
    </div>
    )
}