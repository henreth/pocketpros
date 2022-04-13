import './PackToOpen.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';
import icon from './img/bwfloppy.png'
import icon2 from '../../../../img/cleargithubqr.png'


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

    let packCount = userPacks[packType]===1?userPacks[packType]+ ' pack left':userPacks[packType]+ ' packs left'

    return(
        <div className={packClass} onClick={handlePackClick}>
        <div className='pack-info-container'>
        <div className='pack-title top'>POCKET PROGRAMMERS</div>
        {/* <div className='pack-title top'>{packType.toUpperCase()}</div> */}
        <div className={packType+'-text'} >{packType.toUpperCase()}</div>
            <img className='floppy' src={icon} />
            <div className={'pack-count ' + packType + '-text'}>{packCount}</div>

            <div className='pack-title bottom' >POCKET PROGRAMMERS</div>
            {/* <div className='pack-title bottom' >{packType.toUpperCase()}</div> */}
        </div>
    </div>
    )
}