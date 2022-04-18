import './PackToBuy.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';
import icon from './img/bwfloppy.png'


export default function PackToBuy({ user, packType, setUser, setUserCards, userPacks, setUserPacks, userCredits, setUserCredits }) {
    const packLogos = require.context('../../../img/pack_logos', true);


    let logo;
    let packCost;
    let cardsPerPack;
    let packProb;
    switch (packType) {
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
        if (user.credits < packCost) {
            alert(`ERROR: You do not have enough credits to purchase this pack.`)
        } else {
            let packToBuy = {
                "pack": packType,
                "cost": packCost
            }
            axios.post('buypack', packToBuy)
                .then(r => {
                    alert(`${packType[0].toUpperCase() + packType.slice(1,)} Pack bought!`)
                    //update user information
                    fetch("/me")
                        .then((r) => {
                            if (r.ok) {
                                r.json().then((user) => {
                                    setUser(user)
                                    setUserPacks(user.packs)
                                    setUserCredits(user.credits)
                                })
                            }
                        })
                }

                )
        }

    }

    let packClass = 'pack ' + packType

    let costClass = parseInt(user.credits) < parseInt(packCost) ? 'pack-cost locked' : 'pack-cost'

    return (
        <div className={packClass} onClick={handlePackClick}>
            <div className='pack-information'>
                <div className={costClass}>🪙 <b>{packCost}</b></div>
            </div>

            <div className='pack-info-container'>
                <img className='pack-logo' src={packLogos(logo)} />
                <div className='pack-title top inverse'>POCKET PROGRAMMERS</div>
                {/* <div className={packType + '-text'} >{packType.toUpperCase()}</div> */}
                <div className={packType + '-text'} >{cardsPerPack} Cards</div>
                <div className={packType+ '-text'}><b>{packProb}</b> CHANCE</div>
                <div className={'pack-count ' + packType + '-text buy'}>{userPacks[packType]}</div>
                <div className={packType + '-text'} >{packType.toUpperCase()}</div>
                <div className='pack-title bottom' >POCKET PROGRAMMERS</div>

            </div>
        </div>
    )
}