import './PackToOpen.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';
import icon from './img/bwfloppy.png'
import icon2 from '../../../../img/cleargithubqr.png'


export default function PackToOpen({ packType, setUser, setUserCards, userPacks, setUserPacks, setOpenedCards, setShowModal }) {
    const packLogos = require.context('../../../../img/pack_logos', true);

    let logo;
    let packCost;
    let cardsPerPack;
    let packProb;
    switch (packType) {
        case 'booster':
            logo = './bwfolder.png';
            packCost = 0;
            cardsPerPack = 6;
            packProb='Very Low'
            break
        case ('regular'):
            logo = './bwfloppy.png'
            packCost = 15;
            cardsPerPack = 8;
            packProb='Low'
            break
        case ('pro'):
            logo = './bwfork.png';
            packCost = 30;
            cardsPerPack = 7;
            packProb='Medium'
            break
        case ('max'):
            logo = './bwglass.png';
            packCost = 55;
            cardsPerPack = 6;
            packProb='High'
            break
        case ('ultra'):
            logo = './bwcode.png';
            packCost = 100;
            cardsPerPack = 4;
            packProb='Very High'
            break
        case ('studio'):
            logo = './bwcubes.png';
            packCost = 350;
            cardsPerPack = 2;
            packProb='100%'
            break
    }

    function handlePackClick(e) {
        if (userPacks[packType] == 0) {
            alert(`ERROR: You have no ${packType[0].toUpperCase() + packType.slice(1, packType.length)} Packs left!`)
        } else {
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

    let packClass = 'pack ' + packType

    let packCount = userPacks[packType] == 1 ? userPacks[packType] + ' pack left' : userPacks[packType] + ' packs left'

    return (
        <div className={packClass} onClick={handlePackClick}>
            <div className='pack-info-container'>
                <img className='pack-logo' src={packLogos(logo)} />
                <div className='pack-title top inverse'>POCKET PROGRAMMERS</div>
                {/* <div className={packType + '-text'} >{packType.toUpperCase()}</div> */}
                <div className={packType + '-text'} >{cardsPerPack} Cards</div>
                <div className={packType+ '-text'}><b>{packProb}</b> CHANCE</div>
                <div className={'pack-count ' + packType + '-text'}>{userPacks[packType]}</div>
                <div className={packType + '-text'} >{packType.toUpperCase()}</div>
                <div className='pack-title bottom' >POCKET PROGRAMMERS</div>
            </div>
        </div>
    )
}